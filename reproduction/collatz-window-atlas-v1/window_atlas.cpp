#include <algorithm>
#include <cstdint>
#include <cstdlib>
#include <iostream>
#include <limits>
#include <string>
#include <vector>

namespace {

struct Cell {
    std::uint64_t representatives = 0;
    std::uint64_t dropped = 0;
    std::uint64_t not_dropped = 0;
    std::uint32_t least_unresolved = std::numeric_limits<std::uint32_t>::max();
    std::uint32_t max_shortcut = 0;
    std::uint32_t shortcut_witness = std::numeric_limits<std::uint32_t>::max();
    std::uint32_t max_ordinary = 0;
    std::uint32_t ordinary_witness = std::numeric_limits<std::uint32_t>::max();
};

struct Gate {
    std::uint64_t admitted = 0;
    std::uint64_t dropped = 0;
    std::uint64_t not_dropped = 0;
    std::uint32_t least_unresolved = std::numeric_limits<std::uint32_t>::max();
    std::uint32_t max_shortcut = 0;
    std::uint32_t shortcut_witness = std::numeric_limits<std::uint32_t>::max();
    std::uint32_t max_ordinary = 0;
    std::uint32_t ordinary_witness = std::numeric_limits<std::uint32_t>::max();
};

std::uint64_t choose(unsigned n, unsigned k) {
    if (k > n) return 0;
    k = std::min(k, n - k);
    std::uint64_t out = 1;
    for (unsigned i = 1; i <= k; ++i) out = out * (n - k + i) / i;
    return out;
}

bool parse_positive(const char* raw, unsigned& value) {
    char* end = nullptr;
    const auto parsed = std::strtoul(raw, &end, 10);
    if (end == raw || *end != '\0' || parsed == 0 || parsed > 24) return false;
    value = static_cast<unsigned>(parsed);
    return true;
}

void include_max(std::uint32_t value, std::uint32_t n,
                 std::uint32_t& max_value, std::uint32_t& witness) {
    if (value > max_value || (value == max_value && n < witness)) {
        max_value = value;
        witness = n;
    }
}

void merge_cell(Gate& gate, const Cell& cell, bool fully_covered_cell) {
    gate.admitted += cell.representatives;
    gate.dropped += cell.dropped;
    gate.not_dropped += cell.not_dropped;
    gate.least_unresolved = std::min(gate.least_unresolved, cell.least_unresolved);
    if (fully_covered_cell) {
        include_max(cell.max_shortcut, cell.shortcut_witness,
                    gate.max_shortcut, gate.shortcut_witness);
        include_max(cell.max_ordinary, cell.ordinary_witness,
                    gate.max_ordinary, gate.ordinary_witness);
    }
}

void write_optional(std::ostream& out, bool present, std::uint32_t value) {
    if (present) out << value;
    else out << "null";
}

int run(unsigned first_width, unsigned second_width) {
    const unsigned horizon = first_width + second_width;
    const std::uint64_t modulus = std::uint64_t{1} << horizon;
    const std::uint32_t first_rep = 3;
    const std::uint32_t last_rep = static_cast<std::uint32_t>(modulus + 2);
    const unsigned second_count_width = second_width + 1;
    std::vector<Cell> cells((first_width + 1) * second_count_width);
    auto at = [&](unsigned a, unsigned b) -> Cell& {
        return cells[a * second_count_width + b];
    };

    // This consecutive range contains the least n>=3 in every residue class
    // modulo 2^horizon exactly once.
    for (std::uint32_t n = first_rep; n <= last_rep; ++n) {
        std::uint64_t x = n;
        unsigned odd_first = 0, odd_second = 0, odds = 0;
        unsigned first_drop = 0, odds_at_first_drop = 0;
        for (unsigned t = 1; t <= horizon; ++t) {
            if (x & 1U) {
                ++odds;
                if (t <= first_width) ++odd_first;
                else ++odd_second;
                x = 3 * x + 1;
            }
            x /= 2;
            if (first_drop == 0 && x < n) {
                first_drop = t;
                odds_at_first_drop = odds;
            }
        }
        auto& cell = at(odd_first, odd_second);
        ++cell.representatives;
        if (first_drop == 0) {
            ++cell.not_dropped;
            cell.least_unresolved = std::min(cell.least_unresolved, n);
        } else {
            ++cell.dropped;
            include_max(first_drop, n, cell.max_shortcut, cell.shortcut_witness);
            include_max(first_drop + odds_at_first_drop, n,
                        cell.max_ordinary, cell.ordinary_witness);
        }
    }

    // Verify every exact count with the independent binomial formula.
    std::uint64_t counted_classes = 0;
    for (unsigned a = 0; a <= first_width; ++a) {
        for (unsigned b = 0; b <= second_width; ++b) {
            const auto& cell = at(a, b);
            const auto expected = choose(first_width, a) * choose(second_width, b);
            if (cell.representatives != expected
                || cell.representatives != cell.dropped + cell.not_dropped) {
                std::cerr << "Exact-cell count/control mismatch at " << a << ',' << b << '\n';
                return 1;
            }
            counted_classes += cell.representatives;
        }
    }
    if (counted_classes != modulus) {
        std::cerr << "Parity classes do not sum to the modulus\n";
        return 1;
    }

    std::cout << "{\n"
              << "  \"schema_version\": 1,\n"
              << "  \"window_lengths\": {\"first\": " << first_width
              << ", \"second\": " << second_width << "},\n"
              << "  \"horizon\": " << horizon << ",\n"
              << "  \"map\": \"accelerated Collatz: x/2 for even x; (3*x+1)/2 for odd x\",\n"
              << "  \"class_modulus\": " << modulus << ",\n"
              << "  \"representative_start_range\": {\"first\": " << first_rep
              << ", \"last_inclusive\": " << last_rep
              << ", \"count\": " << modulus
              << ", \"rule\": \"least n >= 3 in each residue class modulo 2^horizon\"},\n"
              << "  \"exact_cells\": [\n";

    bool first_json = true;
    for (unsigned a = 0; a <= first_width; ++a) {
        for (unsigned b = 0; b <= second_width; ++b) {
            const auto& cell = at(a, b);
            if (!first_json) std::cout << ",\n";
            first_json = false;
            const bool full = cell.not_dropped == 0;
            std::cout << "    {\"odd_inputs_first\": " << a
                      << ", \"odd_inputs_second\": " << b
                      << ", \"representative_class_count\": " << cell.representatives
                      << ", \"least_representative_drop_by_horizon_count\": " << cell.dropped
                      << ", \"least_representative_no_drop_by_horizon_count\": " << cell.not_dropped
                      << ", \"least_unresolved_representative\": ";
            if (cell.least_unresolved == std::numeric_limits<std::uint32_t>::max()) std::cout << "null";
            else std::cout << cell.least_unresolved;
            std::cout << ", \"fully_covered\": " << (full ? "true" : "false")
                      << ", \"sharp_max_first_drop_accelerated_steps\": ";
            write_optional(std::cout, full, cell.max_shortcut);
            std::cout << ", \"least_witness_accelerated\": ";
            write_optional(std::cout, full, cell.shortcut_witness);
            std::cout << ", \"sharp_max_first_drop_ordinary_steps\": ";
            write_optional(std::cout, full, cell.max_ordinary);
            std::cout << ", \"least_witness_ordinary\": ";
            write_optional(std::cout, full, cell.ordinary_witness);
            std::cout << '}';
        }
    }
    std::cout << "\n  ],\n  \"upper_cap_gates\": [\n";

    first_json = true;
    for (unsigned cap_first = 0; cap_first <= first_width; ++cap_first) {
        for (unsigned cap_second = 0; cap_second <= second_width; ++cap_second) {
            Gate gate;
            for (unsigned a = 0; a <= cap_first; ++a) {
                for (unsigned b = 0; b <= cap_second; ++b) {
                    const auto& cell = at(a, b);
                    merge_cell(gate, cell, cell.not_dropped == 0);
                }
            }
            const bool full = gate.not_dropped == 0;
            if (!first_json) std::cout << ",\n";
            first_json = false;
            std::cout << "    {\"cap_first\": " << cap_first
                      << ", \"cap_second\": " << cap_second
                      << ", \"admitted_class_count\": " << gate.admitted
                      << ", \"guaranteed_drop_class_count\": " << gate.dropped
                      << ", \"least_representative_no_drop_class_count\": " << gate.not_dropped
                      << ", \"unresolved_least_representative\": ";
            if (gate.least_unresolved == std::numeric_limits<std::uint32_t>::max()) std::cout << "null";
            else std::cout << gate.least_unresolved;
            std::cout << ", \"fully_covered\": " << (full ? "true" : "false")
                      << ", \"sharp_max_first_drop_accelerated_steps\": ";
            write_optional(std::cout, full, gate.max_shortcut);
            std::cout << ", \"least_witness_accelerated\": ";
            write_optional(std::cout, full, gate.shortcut_witness);
            std::cout << ", \"sharp_max_first_drop_ordinary_steps\": ";
            write_optional(std::cout, full, gate.max_ordinary);
            std::cout << ", \"least_witness_ordinary\": ";
            write_optional(std::cout, full, gate.ordinary_witness);
            std::cout << '}';
        }
    }
    std::cout << "\n  ],\n"
              << "  \"interpretation\": {\n"
              << "    \"guaranteed_drop_class_count\": \"Classes whose least n>=3 representative drops by the horizon; the positive affine slope makes every larger member drop by the same or an earlier step.\",\n"
              << "    \"least_representative_no_drop_class_count\": \"Classes whose least representative is a counterexample to a uniform horizon bound. Larger members are unclassified by this representative scan.\",\n"
              << "    \"fully_covered\": \"Every admitted least representative drops by the horizon, so all starts n>=3 in the admitted classes do too.\",\n"
              << "    \"ordinary_steps\": \"If the first accelerated drop is at t after h odd inputs, the first ordinary drop is at t+h.\"\n"
              << "  }\n}\n";
    return 0;
}

}  // namespace

int main(int argc, char** argv) {
    if (argc != 3) {
        std::cerr << "Usage: window_atlas FIRST_WINDOW SECOND_WINDOW (positive lengths, sum <= 24)\n";
        return 2;
    }
    unsigned first_width = 0, second_width = 0;
    if (!parse_positive(argv[1], first_width) || !parse_positive(argv[2], second_width)
        || first_width + second_width > 24) {
        std::cerr << "Window lengths must be positive integers with sum <= 24\n";
        return 2;
    }
    return run(first_width, second_width);
}
