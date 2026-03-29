class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var numDict: [Int: Int] = [:]
        for num in nums {
            if let item = numDict[num] {
                return true
            } else {
                numDict[num] = 1
            }
        }
        return false
    }
}
