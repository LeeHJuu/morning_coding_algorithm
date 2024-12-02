void main(List<String> args) {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
    var set1 = nums1.toSet();
    var set2 = nums2.toSet();

    var unique1 = set1.where((element) => !set2.contains(element)).toList();
    var unique2 = set2.where((element) => !set1.contains(element)).toList();

    return [unique1, unique2];
  }
}
