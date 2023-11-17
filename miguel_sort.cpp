#include <bitset>
#include <cstdint>
#include <span>
#include <vector>

std::vector<uint32_t> miguel_sort(std::span<uint32_t> arr) {
  /// 2^32 elements
  std::bitset<4294967296> set;
  for (auto f : arr) {
    set.set(f, true);
  }
  std::vector<uint32_t> result;
  for (size_t i = 0; i < 4294967296; i++) {
    if (set.test(i)) {
      result.push_back(i);
    }
  }
  return result;
}
