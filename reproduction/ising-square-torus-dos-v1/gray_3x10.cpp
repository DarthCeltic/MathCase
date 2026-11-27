#include <array>
#include <bit>
#include <cstdint>
#include <iostream>
#include <stdexcept>
#include <vector>

int main() {
  constexpr int W = 3, H = 10;
  constexpr int sites = W * H;
  constexpr int bonds = 2 * sites;
  constexpr std::uint64_t total = std::uint64_t{1} << sites;
  std::vector<std::array<int, 4>> neighbors(sites);
  for (int row = 0; row < H; ++row) {
    for (int col = 0; col < W; ++col) {
      const int i = row * W + col;
      neighbors[i] = {row * W + (col + W - 1) % W,
                      row * W + (col + 1) % W,
                      ((row + H - 1) % H) * W + col,
                      ((row + 1) % H) * W + col};
    }
  }
  std::vector<std::uint64_t> counts(bonds + 1, 0);
  std::uint64_t bits = 0;
  int broken = 0;
  ++counts[0];
  for (std::uint64_t step = 1; step < total; ++step) {
    const unsigned site = std::countr_zero(step);
    const int old_spin = static_cast<int>((bits >> site) & 1U);
    int delta = 0;
    for (int neighbor : neighbors[site]) {
      const int other = static_cast<int>((bits >> neighbor) & 1U);
      delta += (old_spin == other) ? 1 : -1;
    }
    broken += delta;
    bits ^= (std::uint64_t{1} << site);
    if (broken < 0 || broken > bonds) {
      throw std::runtime_error("broken-bond count out of range");
    }
    ++counts[broken];
  }
  std::cout << "{\"width\":3,\"height\":10,\"configurations\":" << total
            << ",\"bonds\":" << bonds << ",\"counts_by_broken_bonds\":[";
  for (int i = 0; i <= bonds; ++i) {
    if (i) std::cout << ',';
    std::cout << counts[i];
  }
  std::cout << "]}\n";
}
