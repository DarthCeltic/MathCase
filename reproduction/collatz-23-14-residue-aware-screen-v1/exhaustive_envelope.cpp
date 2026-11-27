#include <cstdint>
#include <iostream>
#include <vector>
#include <limits>

int main() {
    constexpr int J = 23;
    constexpr int HMAX = 14;
    const std::uint32_t limit = 1u << J;
    std::vector<std::uint64_t> maxima(J + 1, 0);
    std::vector<bool> seen(J + 1, false);
    std::uint64_t words = 0;
    for (std::uint32_t mask = 0; mask < limit; ++mask) {
        int h = 0;
        for (int i = 0; i < J; ++i) h += (mask >> i) & 1u;
        if (h > HMAX) continue;
        int later = h;
        std::uint64_t c = 0;
        std::uint64_t pow3 = 1;
        // Build suffix powers independently by scanning from the last bit toward 0.
        // For an odd bit at i, exponent is the number of odd bits strictly after i.
        for (int i = J - 1; i >= 0; --i) {
            if ((mask >> i) & 1u) {
                --later;
                c += (std::uint64_t(1) << i) * pow3;
            }
            if ((mask >> i) & 1u) pow3 *= 3;
        }
        if (later != 0) return 3;
        if (!seen[h] || c > maxima[h]) maxima[h] = c;
        seen[h] = true;
        ++words;
    }
    std::cout << "method=explicit enumeration of parity masks and coefficient formula\n";
    std::cout << "enumerated_masks_with_h_le_14=" << words << "\n";
    for (int h = 0; h <= HMAX; ++h) {
        const std::uint64_t threshold = ((std::uint64_t(1) << J) - [&](){std::uint64_t p=1; for(int i=0;i<h;++i)p*=3; return p;}()) * 3;
        if (!seen[h] || maxima[h] >= threshold) return 2;
        std::cout << "h=" << h << " max=" << maxima[h] << " threshold=" << threshold
                  << " margin=" << threshold - maxima[h] << " PASS\n";
    }
}
