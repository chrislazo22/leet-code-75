require "debug"

def subarray_sum(nums, k)
  sum = 0
  count = 0
  sum_counts = { 0 => 1 }

  nums.each do |num|
    debugger
    sum += num
    count += sum_counts[sum - k].to_i
    sum_counts[sum] ||= 0
    sum_counts[sum] += 1
  end

  count
end

# p subarray_sub([1, 1, 1] , 2)
# p subarray_sub([1, 2, 3] , 3)
p subarray_sum([1,2,1,2,1], 3)
# p subarray_sum([-1,-1,1], 0)
