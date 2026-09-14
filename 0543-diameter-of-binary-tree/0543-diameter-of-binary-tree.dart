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
  late int max;
  int diameterOfBinaryTree(TreeNode? root) {
    max = 0;
    helper(root);
    return max;
  }

  int helper(TreeNode? root) {
    if (root == null) return 0;
    int leftHeight = helper(root.left);
    int rightHeight = helper(root.right);
    int temp = leftHeight + rightHeight;
    if (max < temp) max = temp;
    return 1 + ((leftHeight > rightHeight) ? leftHeight : rightHeight);
  }
}
