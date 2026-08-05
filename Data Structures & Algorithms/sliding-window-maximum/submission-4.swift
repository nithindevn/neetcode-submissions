class Solution {
    func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
        //Dynamic programming
        
        let n = nums.count
        var outputArray = Array(repeating: 0, count: n-k+1)
        var leftmaxArray = Array(repeating: 0, count: n)
        var rightmaxArray = Array(repeating: 0, count: n)

        leftmaxArray[0] = nums[0]
        rightmaxArray[n-1] = nums[n-1]

        for i in 1..<n {
            if i%k == 0 {
                leftmaxArray[i] = nums[i]
            } else {
                leftmaxArray[i] = max(leftmaxArray[i - 1], nums[i])
            }

            if (n-1-i)%k == 0 {
                rightmaxArray[n-1-i] = nums[n-1-i]
            } else {
                rightmaxArray[n-1-i] = max(rightmaxArray[n-i], nums[n-1-i])
            }
        }

        for i in 0..<(n-k+1) {
            outputArray[i] = max(leftmaxArray[i+k-1], rightmaxArray[i])
        }
        return outputArray
    }
}
