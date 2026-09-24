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
  bool isSymmetric(TreeNode? root) {
    return isSame(root?.left, root?.right);
  }

  bool isSame(TreeNode? leftNode, TreeNode? rightNode) {
    if (leftNode == null && rightNode == null) return true;
    if (leftNode == null || rightNode == null || leftNode.val != rightNode.val)
      return false;
    return isSame(leftNode.left, rightNode.right) &&
        isSame(leftNode.right, rightNode.left);
  }
}
