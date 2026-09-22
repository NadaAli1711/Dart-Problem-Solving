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
  bool isSubtree(TreeNode? root, TreeNode? subRoot) {
    if(root == null)return false;
    if(sameTree(root,subRoot)) return true;
    return isSubtree(root.right,subRoot) || isSubtree(root.left,subRoot);
  }
  bool sameTree(TreeNode? root, TreeNode? subRoot){
    if(root == null && subRoot == null) return true;
    if(root == null || subRoot == null || root.val != subRoot.val)return false;
    return sameTree(root.right , subRoot.right) && sameTree(root.left , subRoot.left);
  }
}