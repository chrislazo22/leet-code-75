require "debug"

def product_except_self(nums)
  n = nums.length
  result = Array.new(n, 1)


  prefix_product = 1
  (0...n).each do |i|
    debugger
    result[i] *= prefix_product
    prefix_product *= nums[i]
  end


  suffix_product = 1
  (n-1).downto(0).each do |i|
    result[i] *= suffix_product
    suffix_product *= nums[i]
  end

  result
end

p product_except_self([1,2,3,4])
