require "debug"

# def move_zeroes(nums)
#   count = nums.count(0)
#   nums.delete(0)
#   count.times { nums << 0 }
#   nums
# end
#
def move_zeroes(nums)
    zero_position = 0

    # Iterate through the array
    nums.each_with_index do |num, i|
        # If the current element is non-zero, move it to the zero_position
        print nums
        puts
        if num != 0
            nums[i] = 0
            nums[zero_position] = num
            zero_position += 1
        end
    end

    nums
end

print move_zeroes([0,1,0,3,12])
