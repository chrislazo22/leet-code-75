require "debug"
def remove_duplicates(nums)
  return 0 if nums.empty?

  unique_count = 1
   current = nums[0]

  (1...nums.size).each do |i|
    if nums[i] != current
      nums[unique_count] = nums[i]
      unique_count += 1
      current = nums[i]
    end
  end

  unique_count
end

p remove_duplicates([0,0,1,1,1,2,2,3,3,4])
# p remove_duplicates([1,2])
