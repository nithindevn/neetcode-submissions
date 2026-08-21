class MinStack {
    var origStack: [Int]
    var minStack: [Int]
    init() {
        origStack = []
        minStack = []
    }

    func push(_ val: Int) {
        origStack.append(val)
        if let lastMin = minStack.last {
            minStack.append(min(val, lastMin))
        } else {
            minStack.append(val)
        }
        
    }

    func pop() {
        _ = origStack.popLast()
        _ = minStack.popLast()
    }

    func top() -> Int {
        origStack.last!
    }

    func getMin() -> Int {
        minStack.last!
    }
}
