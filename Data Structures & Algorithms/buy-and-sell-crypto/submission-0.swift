class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        //The idea is to precompute an array of least BuyValue for every index as SellValue
        var leastArray: [Int] = []
        var profitArray: [Int] = []
        leastArray.append(prices[0])
        let count = prices.count
        var maxValue = 0

        for i in 1..<count {
            leastArray.append(min(prices[i-1], leastArray[i-1]))
        }

        for i in 0..<count {
            profitArray.append(prices[i]-leastArray[i])
        }

        for i in 0..<count {
            maxValue = max(profitArray[i], maxValue)
        }
        return (maxValue > 0 ? maxValue : 0)
    }
}
