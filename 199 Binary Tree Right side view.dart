/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */

import 'dart:collection';

class Solution {
  List<int> rightSideView(TreeNode? root) {
    if (root == null) {
      return [];
    }

    Queue q = new Queue();
    q.add(root);
    List<int> result = [];

    while (q.isNotEmpty) {
      int count = q.length;

      for (int i = count; i > 0; i--) {
        TreeNode node = q.first;
        q.removeFirst();
        if (i == count) {
          result.add(node.val);
        }
        if (node.right != null) {
          q.add(node.right);
        }
        if (node.left != null) {
          q.add(node.left);
        }
      }
    }
    return result;
  }
}
