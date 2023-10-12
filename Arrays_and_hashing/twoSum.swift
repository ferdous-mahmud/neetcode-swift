import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dictonary = [Int: Int]()

        for (index, value) in nums.enumerated() {
            if let dictonaryIndex = dictonary[value] {
                return [dictonaryIndex, index]
            } else {
                dictonary[target - value] = index
            }
        }
        return []
    }
}

let sol = Solution()

// Inputs
let nums = [2,7,11,15], target = 9

let output = sol.twoSum(nums, target)
print(output)

        