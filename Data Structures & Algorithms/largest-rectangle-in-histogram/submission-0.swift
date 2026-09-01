class Solution {
    func largestRectangleArea(_ heights: [Int]) -> Int {
        //stack
        let n = heights.count
        var stack = [Int]()
        var leftMost = Array(repeating: -1, count: n)

        for i in 0..<n {
            while !stack.isEmpty && heights[stack.last!] >= heights[i] {
                stack.removeLast()
            }

            if !stack.isEmpty {
                leftMost[i] = stack.last!
            }

            stack.append(i)
        }

        stack.removeAll()
        var rightMost = Array(repeating: n, count: n)

        for i in stride(from:n-1, through: 0, by: -1) {
            while !stack.isEmpty && heights[stack.last!] >= heights[i] {
                stack.removeLast()
            }

            if !stack.isEmpty {
                rightMost[i] = stack.last!
            }

            stack.append(i)
        }
        var maxArea = 0

        for i in 0..<n {
            leftMost[i] += 1
            rightMost[i] -= 1

            maxArea = max(maxArea, heights[i] * (rightMost[i]-leftMost[i]+1))
        }
        return maxArea
    }
}
