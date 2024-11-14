require "debug"

class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end

def max_path_sum(root)
  result = []
  get_max_path_sum(root, result)
  result.max
end

def get_max_path_sum(root, result)
  return if root.left.nil?

  get_max_path_sum(root.left, result)
  debugger
  result << root.left.val + root.val + root.right.val
  # result = current_sum if current_sum > result
  #
  result
end

# root = TreeNode.new(1)
# root.left = TreeNode.new(2)
# root.right = TreeNode.new(3)

root = TreeNode.new(-10)
root.left = TreeNode.new(9)
root.right = TreeNode.new(20)
root.right.left = TreeNode.new(15)
root.right.right = TreeNode.new(7)

p max_path_sum(root)


