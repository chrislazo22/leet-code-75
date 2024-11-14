require "debug"

def search_range(nums, target)
  left = 0
  right = nums.length - 1

  while left <= right
    debugger
    mid = (left + right) / 2
    return mid if nums[mid] == target

    if nums[left] <= nums[mid]
      if nums[left] <= target && target < nums[mid]
        right = mid -1
      else
        left =  mid + 1
      end
    else
      if nums[right] < target && target <= nums[right]
        left = mid + 1
      else
        right = mid -1
      end
    end
  end
end

p search_range([5,7,7,8,8,10], 8)
