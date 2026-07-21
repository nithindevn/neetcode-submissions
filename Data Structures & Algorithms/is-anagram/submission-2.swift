class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {

        guard s.count == t.count else {
            return false
        }

        var sDict: [Character: Int] = [:]
        var tDict: [Character: Int] = [:]

        for sChar in s {
            sDict[sChar, default: 0] += 1
        }

        for tChar in t {
            tDict[tChar, default: 0] += 1
        }

        for (key, value) in sDict {
            if tDict[key] != value {
                return false
            }
        }

        return true
    }
}
