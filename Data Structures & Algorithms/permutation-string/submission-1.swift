class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        if s1.count > s2.count { return false }
        //Use sliding window of size s1.
        var l = 0
        var r = s1.count-1
        let count = s2.count
        let smallArray = Array(s1)
        let largeArray = Array(s2)

        //Create hashmap for s1 & window
        var smallMap = [Character: Int]()
        for char in smallArray {
            smallMap[char, default: 0] += 1
        }

        var windowMap = [Character: Int]()
        for i in l...r {
            windowMap[largeArray[i], default: 0] += 1
        }
    
        while true {
            if windowMap == smallMap {
                return true
            }

            windowMap[largeArray[l], default: 0] -= 1
            if windowMap[largeArray[l]] == 0 {
                windowMap[largeArray[l]] = nil
            }
            l += 1

            r += 1
            if r == count { return false }
            windowMap[largeArray[r], default: 0] += 1
        }
        return false
    }
}
