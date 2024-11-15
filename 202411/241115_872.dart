class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  bool leafSimilar(TreeNode? root1, TreeNode? root2) {
    var leaf1 = getLeafNode(root1);
    var leaf2 = getLeafNode(root2);

    if (leaf1.length != leaf2.length) return false;
    for (var i = 0; i < leaf2.length; i++) {
      if (leaf1[i] != leaf2[i]) return false;
    }
    return true;
  }

  List<int> getLeafNode(TreeNode? root) {
    List<int> leaves = [];

    void gln(TreeNode? node) {
      if (node == null) return;
      if (node.left == null && node.right == null) leaves.add(node.val);

      gln(node.left);
      gln(node.right);
    }

    gln(root);

    return leaves;
  }
}
