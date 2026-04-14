class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var leftPivot = 0
        let count = numbers.count
        var rightPivot = count-1
        var resultArray: [Int] = []

        while leftPivot < rightPivot {
            let sum = numbers[leftPivot] + numbers[rightPivot]
            if sum == target {
                resultArray = [leftPivot+1, rightPivot+1]
                break
            } else if sum < target {
                leftPivot += 1
            } else {
                rightPivot -= 1
            }
        }
        return resultArray
    }
}
