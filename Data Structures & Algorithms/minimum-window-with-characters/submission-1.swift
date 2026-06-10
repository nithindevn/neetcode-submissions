class Solution {
    func minWindow(_ s: String, _ t: String) -> String {
        if t.isEmpty { return "" }

        var tDict = [Character: Int]()
        var windowDict = [Character: Int]()
        var l = 0
        var sArray = Array(s)
        var resultLength = Int.max
        var resultIndexes = [-1, -1]
        

        for char in t {
            tDict[char, default: 0] += 1
        }

        let targetCount = tDict.count
        var windowCount = 0
        
        for r in 0..<sArray.count {
            let char = sArray[r]
            windowDict[char, default: 0] += 1

            if let count = windowDict[char], count == tDict[char] {
                windowCount += 1
            }

            while windowCount == targetCount {
                //save if smallest Window
                if (r-l+1) < resultLength {
                    resultLength = r-l+1
                    resultIndexes = [l, r]
                }

                //shift l logic
                let leftChar = sArray[l]
                windowDict[leftChar]! -= 1

                if let count = tDict[leftChar], windowDict[leftChar]! < count {
                    windowCount -= 1
                }
                l += 1
            }
        }
        return resultLength != Int.max ? String(sArray[resultIndexes[0]...resultIndexes[1]]) : ""

    }
}
