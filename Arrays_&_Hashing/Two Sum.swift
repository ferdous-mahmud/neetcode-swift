/*
    Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
    You may assume that each input would have exactly one solution, and you may not use the same element twice.
    You can return the answer in any order.

    Hints: Use key value pair
    
    Time: O(n)
    Space: O(n)
*/

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var backup = [Int: Int]() // pairs
        var i = 0
        
        for n in nums {
            let rem = target - n
            if let secondIndex = backup[rem] {
                return [i, secondIndex]
            }
            backup[n] = i
            i += 1
        }
        
        return [-1, -1]
    }
}