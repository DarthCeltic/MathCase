#include <array>
#include <cstdint>
#include <iostream>

// For a fixed parity word the endpoint is (3^h n + c)/2^t, with c >= 0.
// If the least admissible representative drops at t, then 3^h < 2^t.
// Every larger start with that parity word therefore drops by the same time.
struct Filter {
    unsigned first_cap, second_cap;
    unsigned count = 0, latest_shortcut = 0, latest_ordinary = 0;
    unsigned shortcut_witness = 0, ordinary_witness = 0;

    void record(unsigned n, unsigned shortcut, unsigned ordinary) {
        ++count;
        if (shortcut > latest_shortcut) {
            latest_shortcut = shortcut;
            shortcut_witness = n;
        }
        if (ordinary > latest_ordinary) {
            latest_ordinary = ordinary;
            ordinary_witness = n;
        }
    }
};

int main() {
    constexpr unsigned modulus = 1u << 24;
    std::array<Filter, 3> filters = {{{9, 6}, {6, 9}, {6, 12}}};
    // The consecutive starts 3 through 2^24+2 give the least n >= 3 in every class.
    for (unsigned n = 3; n < modulus + 3; ++n) {
        std::uint64_t x = n;
        unsigned odds = 0, first_block = 0, first_drop = 0, ordinary_drop = 0;
        for (unsigned t = 1; t <= 24; ++t) {
            if (x % 2) {
                ++odds;
                x = 3 * x + 1;
            }
            x /= 2;
            if (t == 12) first_block = odds;
            if (x < n && first_drop == 0) {
                first_drop = t;
                ordinary_drop = t + odds;
            }
        }
        for (auto& f : filters) {
            if (first_block <= f.first_cap && odds - first_block <= f.second_cap) {
                if (first_drop == 0) {
                    std::cerr << "No drop for an admitted representative: " << n << '\n';
                    return 1;
                }
                f.record(n, first_drop, ordinary_drop);
            }
        }
    }
    std::cout << "first_cap,second_cap,classes,max_shortcuts,max_ordinary,smallest_shortcut_witness,smallest_ordinary_witness\n";
    for (const auto& f : filters) {
        std::cout << f.first_cap << ',' << f.second_cap << ',' << f.count << ','
                  << f.latest_shortcut << ',' << f.latest_ordinary << ','
                  << f.shortcut_witness << ',' << f.ordinary_witness << '\n';
    }
}
