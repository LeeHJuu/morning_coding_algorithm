class Solution {
  bool isPalindrome(String s) {
    
    var filteredStr = s.split("").where((c)=>RegExp(r'[a-zA-Z0-9]').hasMatch(c)).toList();

    int left = 0;
    int right = filteredStr.length - 1;
    while(left < right){
      if(filteredStr[left].toLowerCase() != filteredStr[right].toLowerCase()) return false;
      left++;
      right--;
    }
    return true;
  }
}