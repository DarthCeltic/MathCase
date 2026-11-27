#include <array>
#include <bit>
#include <cstdint>
#include <iostream>

namespace {
constexpr int width = 3;
constexpr int height = 10;
constexpr int sites = width * height;
constexpr int max_bonds = 2 * sites;
std::array<std::array<std::uint64_t, sites + 1>, max_bonds + 1> counts{};

int site(int row, int col) {
    return ((row + height) % height) * width + ((col + width) % width);
}

int neighbor(int index, int direction) {
    const int row = index / width;
    const int col = index % width;
    if (direction == 0) return site(row, col - 1);
    if (direction == 1) return site(row, col + 1);
    if (direction == 2) return site(row - 1, col);
    return site(row + 1, col);
}
}

int main() {
    std::uint32_t state = 0;
    int broken = 0;
    int up = 0;
    counts[broken][up]++;
    const std::uint64_t total = std::uint64_t{1} << sites;

    // Binary-reflected Gray order flips exactly ctz(step) at transition step.
    for (std::uint64_t step = 1; step < total; ++step) {
        const int flipped = std::countr_zero(step);
        const bool old_up = ((state >> flipped) & 1U) != 0;
        for (int direction = 0; direction < 4; ++direction) {
            const int other = neighbor(flipped, direction);
            const bool neighbor_up = ((state >> other) & 1U) != 0;
            broken += (old_up == neighbor_up) ? 1 : -1;
        }
        state ^= (std::uint32_t{1} << flipped);
        up += old_up ? -1 : 1;
        counts[broken][up]++;
    }

    std::cout << "{\"schema\":\"mathcase-ising-joint-energy-magnetization-v1\",\"width\":3,\"height\":10,\"states\":1073741824,\"counts_by_broken_bonds_and_up_spins\":[";
    for (int b = 0; b <= max_bonds; ++b) {
        if (b) std::cout << ',';
        std::cout << '[';
        for (int u = 0; u <= sites; ++u) {
            if (u) std::cout << ',';
            std::cout << counts[b][u];
        }
        std::cout << ']';
    }
    std::cout << "]}\n";
    return 0;
}
