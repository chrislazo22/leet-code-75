require "debug"

class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end

def flatten(root)
  return if root.nil?

  left = root.left
  right = root.right

  flatten(left)
  flatten(right)

  root.left = nil
  root.right = left

  current = root
  current = current.right while current.right

  current.right = right
  current.inspect
end

root = TreeNode.new(1)
root.left = TreeNode.new(2)
root.left.left= TreeNode.new(3)
root.left.right = TreeNode.new(4)
root.right = TreeNode.new(5)
root.right.right = TreeNode.new(6)

puts flatten(root)
