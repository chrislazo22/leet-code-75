class Solution(object):
    def findDifference(self, nums1, nums2):
        """
        :type nums1: List[int]
        :type nums2: List[int]
        :rtype: List[List[int]]
        """
        set1 = set(nums1)
        set2 = set(nums2)

        return [list(set1 - set2), list(set2 - set1)]

sol = Solution.new()
sol.findDifference([1, 2, 3], [2, 4, 6])

