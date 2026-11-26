#include <array>
#include <bit>
#include <cstdint>
#include <cstdlib>
#include <iostream>
#include <stdexcept>
#include <vector>

int main(int argc, char** argv) {
    if (argc != 2) {
        std::cerr << "usage: enumerate_gray L (3, 4, or 5)\n";
        return 2;
    }
    const int L = std::atoi(argv[1]);
    if (L < 3 || L > 5) {
        std::cerr << "L must be 3, 4, or 5\n";
        return 2;
    }

    const int sites = L * L;
    const int bonds = 2 * sites;
    const std::uint64_t configurations = std::uint64_t{1} << sites;
    std::vector<std::array<int, 4>> neighbors(sites);
    for (int row = 0; row < L; ++row) {
        for (int col = 0; col < L; ++col) {
            const int site = row * L + col;
            neighbors[site] = {
                row * L + (col + L - 1) % L,
                row * L + (col + 1) % L,
                ((row + L - 1) % L) * L + col,
                ((row + 1) % L) * L + col,
            };
        }
    }

    std::vector<std::uint64_t> counts(bonds + 1, 0);
    std::uint64_t bits = 0;  // Spin bit 0 means -1; bit 1 means +1.
    int broken = 0;
    counts[0] = 1;
    for (std::uint64_t step = 1; step < configurations; ++step) {
        // Consecutive binary-reflected Gray words differ at ctz(step).
        const unsigned site = std::countr_zero(step);
        const int old_spin = static_cast<int>((bits >> site) & 1U);
        int delta = 0;
        for (const int neighbor : neighbors[site]) {
            const int other = static_cast<int>((bits >> neighbor) & 1U);
            delta += (old_spin == other) ? 1 : -1;
        }
        broken += delta;
        bits ^= (std::uint64_t{1} << site);
        if (broken < 0 || broken > bonds) {
            throw std::runtime_error("incremental broken-bond count escaped its range");
        }
        ++counts[broken];
    }

    std::cout << "{\"schema\":\"mathcase-ising-gray-dos-v1\",\"L\":" << L
              << ",\"configurations\":" << configurations
              << ",\"total_bonds\":" << bonds
              << ",\"counts_by_broken_bonds\":[";
    for (int i = 0; i <= bonds; ++i) {
        if (i) std::cout << ',';
        std::cout << counts[i];
    }
    std::cout << "]}\n";
    return 0;
}
