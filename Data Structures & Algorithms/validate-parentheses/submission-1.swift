class Solution {
    func isValid(_ s: String) -> Bool {
        let match: [Character: Character] = ["]": "[", "}": "{", ")": "("]
        var stack: [Character] = []

        let array = Array(s)

        for bracket in array {
            if let openMatch = match[bracket] {
                //encountered close
                if stack.count > 0, let top = stack.last {
                    if top != openMatch {
                        return false
                    } else {
                        _ = stack.removeLast()
                    }

                } else {
                    return false
                }
            } else {
                //encountered open add to stack
                stack.append(bracket)
            }
        }
        return stack.isEmpty
    }
}
