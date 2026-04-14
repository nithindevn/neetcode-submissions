class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        var left = 0
        let count = heights.count
        var right = count-1
        var maxArea = 0
        var currArea = 0

        while left < right {
            currArea = min(heights[left], heights[right]) * (right-left)
            maxArea = max(currArea, maxArea)
            if heights[left] < heights[right] {
                left += 1
            } else {
                right -= 1
            }
        }
        return maxArea
    }
}
