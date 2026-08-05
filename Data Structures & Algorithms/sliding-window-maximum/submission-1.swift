//import Collections
class Solution {
    //max heap solution
    func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
        let n = nums.count
        var resultArray: [Int] = []
        var heap = Heap<Item>()

        for i in 0..<n {
            heap.insert(Item(number: nums[i], index: i))

            if i >= k-1 {
                while heap.max!.index <= i-k {
                    heap.removeMax()
                }
                resultArray.append(heap.max!.number)
            }
        }
        return resultArray
    }
}

struct Item: Comparable {
    let number: Int
    let index: Int

    static func < (lhs: Item, rhs: Item) -> Bool {
        return lhs.number < rhs.number
    }
}