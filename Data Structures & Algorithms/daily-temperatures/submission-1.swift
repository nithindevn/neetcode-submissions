class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var stack = [Item]()
        let count = temperatures.count
        var result = Array(repeating: 0, count: count)
        
        stack.append(Item(index: 0, value: temperatures.first!))

        for i in 1..<count {
            if temperatures[i] < stack.last!.value {
                stack.append(Item(index: i, value: temperatures[i]))
            } else {
                var j = stack.count-1

                while j >= 0 {
                    if stack.last!.value < temperatures[i] {
                        let top = stack.popLast()!
                        let diff = i - top.index
                        result[top.index] = diff
                    } else {
                        break
                    }
                    j -= 1
                }
                stack.append(Item(index: i, value: temperatures[i]))
            }
        }
        return result
    }

    struct Item {
        var index: Int
        var value: Int
    }
}
