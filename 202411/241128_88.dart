class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    if (n == 0) return;

    for (var i = 0; i < nums1.length; i++) {
      if (nums1[i] == 0 && n > 0) {
        nums1[i] = nums2.first;
        nums2.removeAt(0);
        n--;
      }
    }

    nums1.sort();
  }
}
