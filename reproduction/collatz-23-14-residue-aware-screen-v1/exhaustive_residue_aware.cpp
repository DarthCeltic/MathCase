#include <cstdint>
#include <iostream>
#include <vector>
#include <limits>

static std::uint64_t mod_pow(std::uint64_t a, std::uint64_t e, std::uint64_t m) {
    std::uint64_t r = 1;
    while (e) { if (e & 1) r = (r * a) % m; a = (a * a) % m; e >>= 1; }
    return r;
}
static std::uint64_t inverse(std::uint64_t a, std::uint64_t m) {
    return mod_pow(a, (m / 2) - 1, m); // phi(2^23)-1
}

int main() {
    constexpr int J = 23, HMAX = 14;
    const std::uint64_t mod = std::uint64_t(1) << J;
    const std::uint32_t limit = 1u << J;
    std::vector<std::uint64_t> coefficient_max(J + 1, 0);
    std::vector<std::uint64_t> minimum_residue(J + 1, 0), minimum_n(J + 1, 0), minimum_c(J + 1, 0);
    std::vector<std::int64_t> min_margin(J + 1, std::numeric_limits<std::int64_t>::max());
    std::vector<std::uint32_t> worst_mask(J + 1, 0);
    std::vector<bool> seen(J + 1, false);
    std::uint64_t words = 0;
    for (std::uint32_t mask = 0; mask < limit; ++mask) {
        int h = 0;
        for (int i = 0; i < J; ++i) h += (mask >> i) & 1u;
        if (h > HMAX) continue;
        std::uint64_t pow3 = 1, c = 0;
        for (int i = J - 1; i >= 0; --i) {
            if ((mask >> i) & 1u) c += (std::uint64_t(1) << i) * pow3;
            if ((mask >> i) & 1u) pow3 *= 3;
        }
        const std::uint64_t three_h = pow3;
        const std::uint64_t inv = inverse(three_h % mod, mod);
        const std::uint64_t residue = (mod - ((c * inv) % mod)) % mod;
        std::uint64_t n_min = residue;
        while (n_min < 3) n_min += mod;
        const std::int64_t margin = static_cast<std::int64_t>((mod - three_h) * n_min - c);
        if (!seen[h] || c > coefficient_max[h]) coefficient_max[h] = c;
        if (!seen[h] || margin < min_margin[h]) {
            min_margin[h] = margin; worst_mask[h] = mask; minimum_residue[h] = residue;
            minimum_n[h] = n_min; minimum_c[h] = c;
        }
        seen[h] = true;
        ++words;
    }
    std::cout << "method=explicit parity-mask enumeration with direct coefficient sum and modular inverse\n";
    std::cout << "enumerated_masks_with_h_le_14=" << words << "\n";
    bool all_pass = true;
    for (int h = 0; h <= HMAX; ++h) {
        const bool pass = seen[h] && min_margin[h] > 0;
        all_pass &= pass;
        std::cout << "h=" << h << " max_coefficient=" << coefficient_max[h]
                  << " worst_mask=" << worst_mask[h] << " worst_residue=" << minimum_residue[h]
                  << " least_n=" << minimum_n[h] << " worst_c=" << minimum_c[h]
                  << " min_margin=" << min_margin[h] << " " << (pass ? "PASS" : "FAIL") << "\n";
    }
    return all_pass ? 0 : 2;
}
