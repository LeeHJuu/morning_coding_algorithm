class Solution {
  List<List<String>> suggestedProducts(
    List<String> products,
    String searchWord,
  ) {
    List<List<String>> searchList = [];
    products.sort();

    for (var i = 0; i < searchWord.length; i++) {
      List<String> list = products
          .where(
              (product) => product.startsWith(searchWord.substring(0, i + 1)))
          .toList();
      searchList.add(list.take(3).toList());
    }
    return searchList;
  }
}
