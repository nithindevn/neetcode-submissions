class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        let count = nums.count
        let sortedArray = nums.sorted()
        var left = 0
        var right = 0
        var result:[[Int]] = []
        var target = 0
        var sum = 0

        for i in 0..<count-1 {
            left = i+1
            right = count-1
            target = sortedArray[i] * -1

            while left<right {
                sum = sortedArray[left] + sortedArray[right] 
                if sum == target {
                    if !result.contains([sortedArray[i], sortedArray[left], sortedArray[right]]) {
                        result.append([sortedArray[i], sortedArray[left], sortedArray[right]])
                    }
                    left += 1
                    right -= 1
                } else if sum<target {
                    left += 1
                } else {
                    right -= 1
                }
            }
        }

        return result
    }
}
