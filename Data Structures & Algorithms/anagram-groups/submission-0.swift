class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        //compute code for each string
        //save each string at the index as code as an array
        //append new item for same code
        
        var outputDict: [[Int]: [String]] = [:]
        for str in strs {
            var initialKey = Array(repeating: 0, count: 26)
            for char in str {
                if let ascii = char.asciiValue {
                    let index = Int(ascii - 97)
                    initialKey[index] += 1
                }
            }
            var array: [String] = []
            if let value = outputDict[initialKey] {
                array = value
                array.append(str)
            } else {
                array = [str]
            }
            outputDict[initialKey] = array
        }

        var result: [[String]] = []
        for (_, value) in outputDict {
            result.append(value)
        }
        return result
    }
}
