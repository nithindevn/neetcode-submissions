class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        let numsSet = Set(nums)
        let uniqueArray = Array(numsSet)
        var maxCount = 0
        var tempNum = 0
        var tempCount = 0
        for item in uniqueArray {
            if !numsSet.contains(item-1) {
                tempNum = item+1
                tempCount = 1
                while true {
                    if numsSet.contains(tempNum) {
                        tempNum += 1
                        tempCount += 1
                    } else {
                        maxCount = max(tempCount, maxCount)
                        break
                    }
                }
            }
        }
        return maxCount
    }
}
