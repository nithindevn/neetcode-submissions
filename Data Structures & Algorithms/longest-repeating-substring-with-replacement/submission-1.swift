class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        var dict = [Character: Int]()
        var maxf = 0
        var result = 0
        var l = 0
        var r = 0
        let array = Array(s)

        for r in 0..<s.count {
            dict[array[r], default: 0] += 1
            maxf = max(maxf, dict[array[r], default: 0])

            while (r-l+1) - maxf > k {
                dict[array[l], default: 0] -= 1
                l += 1
            }

            result = max(result, r-l+1)
        }
        return result
    }
}
