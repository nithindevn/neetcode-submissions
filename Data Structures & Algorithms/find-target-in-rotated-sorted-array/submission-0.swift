class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var l = 0, r = nums.count - 1

        while l < r {
            let m = (l + r) / 2
            if nums[m] > nums[r] {
                l = m + 1
            } else {
                r = m
            }
        }

        let pivot = l

        func binarySearch(_ left: Int, _ right: Int) -> Int {
            var l = left, r = right
            while l <= r {
                let mid = (l + r) / 2
                if nums[mid] == target {
                    return mid
                } else if nums[mid] < target {
                    l = mid + 1
                } else {
                    r = mid - 1
                }
            }
            return -1
        }

        let result = binarySearch(0, pivot - 1)
        if result != -1 {
            return result
        }

        return binarySearch(pivot, nums.count - 1)
    }
}
