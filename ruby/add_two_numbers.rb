class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end

def inorder_traversal(root, result)
  return if root.nil?

  inorder_traversal(root.left, result)
  result << root.val
  inorder_traversal(root.right, result)
end

def is_valid_bst(root)
  result = []

  inorder_traversal(root, result)

  (1...result.length).each do |i|
    return false if result[i] <= result[i - 1]
  end

  true
end

root = TreeNode.new(5)
root.left = TreeNode.new(1)
root.right = TreeNode.new(4)
root.right.left = TreeNode.new(3)
root.right.right = TreeNode.new(6)

puts is_valid_bst(root)
