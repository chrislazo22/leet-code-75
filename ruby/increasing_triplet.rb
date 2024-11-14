require "debug"

def increasing_triplet(nums)
  first = second = nums.max

  nums.each do |num|
    if num <= first
      first = num
    elsif num <= second
      second = num
    else
      return true
    end
  end

  false
end

# puts increasing_triplet([1,2,3,4,5])
puts increasing_triplet([5,1,6])
