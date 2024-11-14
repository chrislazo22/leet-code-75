require "debug"

def find_max_average(nums, k)
  current_sum = nums[0...k].sum
  max_sum = current_sum

  (k...nums.length).each do |i|
    current_sum += nums[i] - nums[i - k]
    max_sum = [max_sum, current_sum].max
  end

  max_sum / k.to_f
end

puts find_max_average([1,12,-5,-6,50,3], 4)
puts find_max_average([5], 1)
