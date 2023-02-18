// Time complexity: O(n)
// Space complexity: O(n)

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var uniqueNums = Set<Int>()

        for num in nums {
            if uniqueNums.contains(num){
                return true
            } else {
                uniqueNums.insert(num)
            }
        }
        return false
    }
}


// Simple solution

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        return Set(nums).count != nums.count
    }
}