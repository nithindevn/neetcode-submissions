class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        //store in dictionary with count
        //create an array of buckets of size n.
        //each index is the frequency and store element at index.
        //Use array if multiple elements have same frequency
        //create result array by starting from end of bucket array pushing elements to result till we reach k elements
        let count = nums.count
        var countDict: [Int: Int] = [:]
        for num in nums {
            if let value = countDict[num] {
                countDict[num] = value + 1
            } else {
                countDict[num] = 1
            }
        }
        var bucketArray: [[Int]] = Array(repeating: [], count: count+1)
        
        for (key,value) in countDict {
            bucketArray[value].append(key)
        }

        var resultArray: [Int] = []
        var i = count
        while (resultArray.count < k && i >= 0) {
            if !bucketArray[i].isEmpty {
              for element in bucketArray[i] {
                resultArray.append(element)
              }
            }
            i -= 1
        }
        return resultArray
    }
}
