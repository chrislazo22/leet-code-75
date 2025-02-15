require "debug"

# Find the Difference of Two Arrays
# Given two 0-indexed integer arrays nums1 and nums2, return a list answer of size 2 where:

# answer[0] is a list of all distinct integers in nums1 which are not present in nums2.
# answer[1] is a list of all distinct integers in nums2 which are not present in nums1.
# Note that the integers in the lists may be returned in any order.

# Constraints:

# 1 <= nums1.length, nums2.length <= 1000
# -1000 <= nums1[i], nums2[i] <= 1000

def find_difference(nums1, nums2)
  [(nums1 - nums2).uniq, (nums2 - nums1).uniq]
end

p find_difference([1,2,3], [2,4,6])
p find_difference([1,2,3,3], [1,1,2,2])
