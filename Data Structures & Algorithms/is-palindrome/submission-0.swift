class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let stringArray = Array(s.lowercased().filter { $0.isLetter || $0.isNumber })
        let count = stringArray.count
        var leftPivot = 0
        var rightPivot = count-1

        while leftPivot<=rightPivot {
            if stringArray[leftPivot] != stringArray[rightPivot] {
                return false
            } else {
                leftPivot += 1
                rightPivot -= 1
            }
        }
        return true
    }
}
