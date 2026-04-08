class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        //row
        var rowDict:[Character: Int] = [:]
        for i in 0..<9 {
            rowDict = [:]
            for j in 0..<9 {
                if let _ = rowDict[board[i][j]] {
                    return false
                } else if board[i][j] != "." {
                    rowDict[board[i][j]] = 1
                }
            }
        }

        //column
        var colDict: [Character: Int] = [:]
        for i in 0..<9 {
            colDict = [:]
            for j in 0..<9 {
                if let _ = colDict[board[j][i]] {
                    return false
                } else if board[j][i] != "." {
                    colDict[board[j][i]] = 1
                }
            }
        }

        //square
        var squareDict: [Character: Int] = [:]
        for i in 0..<9 {
            squareDict = [:]
            for j in 0..<3 {
                for k in 0..<3 {
                    let row = (i/3)*3 + j
                    let col = (i%3)*3 + k

                    if let _ = squareDict[board[row][col]] {
                        return false
                    } else if board[row][col] != "." {
                        squareDict[board[row][col]] = 1
                    }
                }
            }
        }
        return true
    }
}
