class TimeMap {

    var timeSorted: [String: [Item]]
    init() {
        timeSorted = [:]
    }

    func set(_ key: String, _ value: String, _ timestamp: Int) {
        let item = Item(value: value, timestamp: timestamp)
        if var values = timeSorted[key] {
            values.append(item)
            timeSorted[key] = values
        } else {
            timeSorted[key] = [item]
        }
    }

    func get(_ key: String, _ timestamp: Int) -> String {
        guard let values = timeSorted[key] else {
            return ""
        } 

        guard values.first!.timestamp <= timestamp  else { return "" }

        let count = values.count
        var l = 0, r = count-1
        var resultIndex = l

        while l <= r {
            let mid = (l+r)/2

            if values[mid].timestamp <= timestamp {
                resultIndex = mid
                l = mid+1
            } else {
                r = mid-1
            }
        }

        return values[resultIndex].value
        
    }
}

struct Item {
    var value: String
    var timestamp: Int
}