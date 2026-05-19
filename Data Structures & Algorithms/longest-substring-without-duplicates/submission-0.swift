class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let strArray = Array(s)
        let count = strArray.count
        var hashMap: [Character: Int] = [:]
        var length = 0
        var left = 0
        var right = 0

        while right < count {
            if hashMap[strArray[right]] != nil  {
                while hashMap[strArray[right]] != nil {
                    hashMap[strArray[left]] = nil
                    left += 1
                }
                hashMap[strArray[right]] = 0
                length = max(length, right-left+1)
                right += 1
            } else {
                hashMap[strArray[right]] = 0
                length = max(length, right-left+1)
                right += 1
            }
        }
        return length
    }
}
