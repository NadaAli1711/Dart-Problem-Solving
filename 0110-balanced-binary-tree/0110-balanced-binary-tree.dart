/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */
class Solution {
  bool isBalanced(TreeNode? root) {
    if (root == null) return true;
    int leftHeight = getHeight(root.left);
    int rightHeight = getHeight(root.right);
    bool isCurrentBalanced = (leftHeight - rightHeight).abs() <= 1;
    return isCurrentBalanced && isBalanced(root.left) && isBalanced(root.right);
  }

  int getHeight(TreeNode? root) {
    if (root == null) return 0;
    int leftPath = getHeight(root.left);
    int rightPath = getHeight(root.right);
    return 1 + (leftPath > rightPath ? leftPath : rightPath);
  }
}
