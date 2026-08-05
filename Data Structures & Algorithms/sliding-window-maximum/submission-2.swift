class Solution {
    func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
        let n = nums.count
        var leftMax = [Int](repeating: 0, count: n)
        var rightMax = [Int](repeating: 0, count: n)

        leftMax[0] = nums[0]
        rightMax[n - 1] = nums[n - 1]

        for i in 1..<n {
            if i % k == 0 {
                leftMax[i] = nums[i]
            } else {
                leftMax[i] = max(leftMax[i - 1], nums[i])
            }

            if (n - 1 - i) % k == 0 {
                rightMax[n - 1 - i] = nums[n - 1 - i]
            } else {
                rightMax[n - 1 - i] = max(rightMax[n - i], nums[n - 1 - i])
            }
        }

        var output = [Int](repeating: 0, count: n - k + 1)

        for i in 0..<(n - k + 1) {
            output[i] = max(leftMax[i + k - 1], rightMax[i])
        }

        return output
    }
}