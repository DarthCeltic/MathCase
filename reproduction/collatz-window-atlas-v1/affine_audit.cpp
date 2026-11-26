// Independent C++17 checker for two Collatz parity windows.
// Enumerates parity words symbolically. No starting orbit is simulated.
#include <algorithm>
#include <array>
#include <charconv>
#include <cstdint>
#include <iostream>
#include <limits>
#include <string_view>
#include <vector>

using Integer = std::uint64_t;
constexpr int max_horizon = 24;
constexpr Integer infinity = std::numeric_limits<Integer>::max();

struct Maximum {
    int steps = 0;
    Integer witness = infinity;

    void include(int value, Integer start) {
        if (value > steps || (value == steps && start < witness)) {
            steps = value;
            witness = start;
        }
    }
};

struct Summary {
    Integer all = 0, mixed = 0, none = 0;
    Integer exceptions_in_mixed = 0, least_undropped = infinity;
    Maximum shortcut, ordinary;

    void add(const Summary& other) {
        all += other.all;
        mixed += other.mixed;
        none += other.none;
        exceptions_in_mixed += other.exceptions_in_mixed;
        least_undropped = std::min(least_undropped, other.least_undropped);
        shortcut.include(other.shortcut.steps, other.shortcut.witness);
        ordinary.include(other.ordinary.steps, other.ordinary.witness);
    }
};

// At a prefix of length t, all n = r (mod d) have endpoint (a*n+c)/d,
// where d = 2^t and a = 3^h. image is the endpoint when n = r.
struct Prefix {
    Integer r = 0, d = 1, a = 1, c = 0, image = 0;
    int depth = 0, first_odds = 0, last_odds = 0;
};

class Audit {
    int split, horizon;
    std::vector<std::vector<Summary>> cells;
    std::array<Integer, max_horizon + 1> thresholds{};
    std::array<int, max_horizon + 1> odds{};

    void visit(const Prefix& p, Integer earliest_threshold) {
        if (p.depth == horizon) {
            auto& s = cells[p.first_odds][p.last_odds];
            Integer n = p.r;
            if (n < 3) n += ((3 - n + p.d - 1) / p.d) * p.d;
            if (earliest_threshold > n) {
                s.least_undropped = std::min(s.least_undropped, n);
                if (earliest_threshold == infinity) {
                    ++s.none;
                } else {
                    ++s.mixed;
                    s.exceptions_in_mixed += (earliest_threshold - n + p.d - 1) / p.d;
                }
                return;
            }
            ++s.all;
            // First prefix that drops at the least admissible representative.
            // Larger starts in the same class drop at this prefix or earlier.
            int t = 1;
            while (thresholds[t] > n) ++t;
            s.shortcut.include(t, n);
            s.ordinary.include(t + odds[t], n);
            return;
        }
        for (unsigned bit = 0; bit <= 1; ++bit) {
            // Raising r by d changes its current image by the odd integer a.
            const bool lift = (p.image % 2 != bit);
            const Integer image = p.image + (lift ? p.a : 0);
            Prefix child{
                p.r + (lift ? p.d : 0), 2 * p.d,
                bit ? 3 * p.a : p.a, bit ? 3 * p.c + p.d : p.c,
                bit ? (3 * image + 1) / 2 : image / 2,
                p.depth + 1, p.first_odds + int(bit && p.depth < split),
                p.last_odds + int(bit && p.depth >= split)
            };
            // Strict drop is exactly (d-a)*n > c. When d <= a it is impossible.
            const Integer limit = child.d > child.a ? child.c / (child.d - child.a) + 1 : infinity;
            thresholds[child.depth] = limit;
            odds[child.depth] = child.first_odds + child.last_odds;
            visit(child, std::min(earliest_threshold, limit));
        }
    }

public:
    Audit(int left, int right)
        : split(left), horizon(left + right), cells(left + 1, std::vector<Summary>(right + 1)) {}

    void run() {
        visit(Prefix{}, infinity);
        std::cout << "cap1,cap2,admitted,all_drop,mixed,none_drop,exceptions_in_mixed,"
                     "least_undropped,max_shortcut,shortcut_witness,max_ordinary,ordinary_witness\n";
        for (int i = 0; i <= split; ++i) {
            Summary caps;
            for (int j = 0; j <= horizon - split; ++j) {
                for (int k = 0; k <= i; ++k) caps.add(cells[k][j]);
                std::cout << i << ',' << j << ',' << caps.all + caps.mixed + caps.none
                          << ',' << caps.all << ',' << caps.mixed << ',' << caps.none
                          << ',' << caps.exceptions_in_mixed << ',';
                if (caps.least_undropped != infinity) std::cout << caps.least_undropped;
                if (caps.mixed == 0 && caps.none == 0) {
                    std::cout << ',' << caps.shortcut.steps << ',' << caps.shortcut.witness
                              << ',' << caps.ordinary.steps << ',' << caps.ordinary.witness;
                } else {
                    std::cout << ",,,,";
                }
                std::cout << '\n';
            }
        }
    }
};

bool parse_width(std::string_view arg, int& value) {
    const char* end = arg.data() + arg.size();
    const auto parsed = std::from_chars(arg.data(), end, value);
    return parsed.ec == std::errc{} && parsed.ptr == end && value >= 1 && value < max_horizon;
}

int main(int argc, char** argv) {
    int left = 0, right = 0;
    if (argc != 3 || !parse_width(argv[1], left) || !parse_width(argv[2], right)
        || left + right > max_horizon) {
        std::cerr << "Use: affine_audit FIRST_WIDTH SECOND_WIDTH (positive integers, sum <= 24)\n";
        return 2;
    }
    Audit(left, right).run();
}
