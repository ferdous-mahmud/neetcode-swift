// Time Complexity: O(n)
// Space Complexity: O(n)

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var visited = [Int: Int]()
        var i = 0

        for num in nums {
            let rem = target - num
            if let secondIndex = visited[rem] {
                return [i, secondIndex]
            }
            visited[num] = i
            i += 1
        }
    
        return [-1, -1]
    }
}