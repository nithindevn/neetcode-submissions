class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var compliments : [Int] = []

        for i in 0..<nums.count  {
            let compliment = target-nums[i]
            if compliments.contains(nums[i]) {
                return [compliments.firstIndex(of: nums[i])!, i]
            } else {
                compliments.append(compliment)
            }
            
        }
        return []
    }
}
