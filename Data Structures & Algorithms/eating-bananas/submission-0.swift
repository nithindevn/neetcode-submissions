class Solution {
    func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
        var l = 1, r = piles.max()!
        var res = r

        while l <= r {
            let mid = (l+r)/2

            var totalTime = 0
            for pile in piles {
                totalTime += Int(ceil(Double(pile)/Double(mid)))
            }

            if totalTime <= h {
                res = mid
                r = mid - 1
            } else {
                l = mid + 1
            }
        }
        return res
    }

   

    
}
