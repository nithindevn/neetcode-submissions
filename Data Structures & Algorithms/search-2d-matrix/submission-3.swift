class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        let rows = matrix.count
        let columns = matrix[0].count
        if target < matrix[0][0] || target > matrix[rows-1][columns-1] {
            return false
        }
        
        
        return binarySearchRow(target: target, matrix: matrix, leftRow: 0, rightRow: rows-1, columns: columns)


    }

    func binarySearchRow(target: Int, matrix: [[Int]], leftRow: Int, rightRow: Int, columns: Int) -> Bool {
        if leftRow > rightRow { return false } 
        let mid = (leftRow+rightRow)/2

        if target >= matrix[mid][0] && target <= matrix[mid][columns-1] {
            return binarySearch(left: 0, right: columns-1, array: matrix[mid], target: target)
        } else if target < matrix[mid][0] {
            return binarySearchRow(target: target, matrix: matrix, leftRow: leftRow, rightRow: mid-1, columns: columns)
        } else {
            return binarySearchRow(target: target, matrix: matrix, leftRow: mid+1, rightRow: rightRow, columns: columns)
        }
    }

    func binarySearch(left: Int, right: Int, array: [Int], target: Int) -> Bool {
        if left > right {
            return false
        }
        let mid = (left + right)/2
        if array[mid] == target {
            return true
        }

        if target > array[mid] {
            return binarySearch(left: mid+1, right: right, array: array, target: target)
        } else {
            return binarySearch(left: left, right: mid-1, array: array, target: target)
        }
    }
}
