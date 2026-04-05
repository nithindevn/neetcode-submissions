class Solution {

    func encode(_ strs: [String]) -> String {
        //number#string+number2#string2
        var encoded: String = ""
        var count = 0
        for str in strs {
            count = str.count
            encoded.append("\(count)#\(str)")
        }
        return encoded
    }
    
    func decode(_ str: String) -> [String] {
        let strArray = Array(str)
        var i = 0
        var j = 0
        let count = str.count
        var array: [String] = []
        var number = 0
        var currStr = ""
        while i < count {

            if strArray[j] != "#" {
                j += 1
                continue
            } else {
                number = Int(String(strArray[i..<j]))!
                currStr = String(strArray[j+1..<j+number+1])
                array.append(currStr)
                i = j+number+1
                j = i
            }

        }
        return array
    }
}
