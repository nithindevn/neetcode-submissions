class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var stack = [Int]()
        
        for token in tokens {

            if let number = Int(token) {
                stack.append(number)
            } else {
                let operand2 = stack.popLast()!
                let operand1 = stack.popLast()!
                var result: Int = 0
                switch token {
                    case "+":
                        result = operand1 + operand2
                    case "-":
                        result = operand1 - operand2
                    case "*":
                        result = operand1 * operand2
                    case "/":
                        result = operand1 / operand2
                    default: break
                }
                stack.append(result)
            }
        }
        return stack.last!
    }
}
