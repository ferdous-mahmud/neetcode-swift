import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

        for i in 0..<nums.count {
            for j in 0..<nums.count {
                if i != j {
                    if nums[i] + nums[j] == target {
                        return [i, j]
                    }
                }
            }
        }

        return []
    }
}

let sol = Solution()

// Inputs
let nums = [3,3], target = 6

let output = sol.twoSum(nums, target)
print(output)

        