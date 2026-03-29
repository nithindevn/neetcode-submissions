class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var compliments : [Int: Int] = [:]

        for i in 0..<nums.count  {
            let compliment = target-nums[i]
            
            if let found = compliments[nums[i]] {
                return [found, i]
            } else {
                compliments[compliment] = i
            }
        }
        return []
    }
}
