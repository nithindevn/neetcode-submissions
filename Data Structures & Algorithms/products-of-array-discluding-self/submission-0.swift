class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let count = nums.count
        var leftArray = Array(repeating: 1, count: count)
        var rightArray = Array(repeating: 1, count: count)

        var i = 1
        while i < count {
            leftArray[i] = leftArray[i-1] * nums[i-1]
            i += 1
        }

        i = count - 2

        while i >= 0 {
            rightArray[i] = rightArray[i+1] * nums[i+1]
            i -= 1
        }

        var resultArray: [Int] = []

        i = 0
        while i < count {
            resultArray.append(leftArray[i] * rightArray[i])
            i += 1
        }

        return resultArray
    }
}
