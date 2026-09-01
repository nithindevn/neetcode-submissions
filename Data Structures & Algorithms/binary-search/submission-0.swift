class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        //1,2,3,4,5,6
        return binarySearch(left: 0, right: nums.count-1, array: nums, target: target)

    }

    func binarySearch(left: Int, right: Int, array: [Int], target: Int) -> Int {
        if left > right {
            return -1
        }
        var mid = (left + right)/2
        if array[mid] == target {
            return mid
        }

        if target > array[mid] {
            return binarySearch(left: mid+1, right: right, array: array, target: target)
        } else {
            return binarySearch(left: left, right: mid-1, array: array, target: target)
        }
    }
}
