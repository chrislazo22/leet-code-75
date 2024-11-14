class Solution(object):
    def largestAltitude(self, gain):
        """
        :type gain: List[int]
        :rtype: int
        """
        current_altitude = 0
        max_altitude = 0

        for i in gain:
            current_altitude += i
            max_altitude = max(max_altitude, current_altitude)
            print(max_altitude)

        return max_altitude


sol = Solution()
sol.largestAltitude([-5,1,5,0,-7])
