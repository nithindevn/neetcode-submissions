class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {

        guard s.count == t.count else {
            return false
        }

        var sDict: [Character: Int] = [:]
        var tDict: [Character: Int] = [:]

        for sChar in s {
            if let count = sDict[sChar] {
                sDict[sChar] = count+1
            } else {
                sDict[sChar] = 1
            }
        }

        for tChar in t {
            if let count = tDict[tChar] {
                tDict[tChar] = count+1
            } else {
                tDict[tChar] = 1
            }
        }

        for (key, value) in sDict {
            if tDict[key] != value {
                return false
            }
        }

        return true
    }
}
