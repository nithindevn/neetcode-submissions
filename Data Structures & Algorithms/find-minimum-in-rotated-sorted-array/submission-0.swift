class Solution {
    func findMin(_ nums: [Int]) -> Int {
        var result = nums[0]

        var l = 0, r = nums.count-1

        while l <= r {
            var mid = (l+r)/2

            result = min(result, nums[mid])

            if nums[l] <= nums[r] {
                result = min(result, nums[l])
                break
            }

            if nums[l] <= nums[mid] {
                l = mid+1
            } else {
                r = mid-1
            }
        }

        return result
    }
}
