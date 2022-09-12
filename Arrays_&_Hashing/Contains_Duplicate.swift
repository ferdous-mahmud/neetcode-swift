/*
    Given int array, return true if any value appears at least twice
    Ex. nums = [1,2,3,1] -> true, nums = [1,2,3,4] -> false

    If seen num previously then has dupe, else insert into hash set

    Time: O(n)
    Space: O(n)
*/

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var uniqueElements = Set<Int>()
    
        for num in nums {
            if uniqueElements.contains(num){
                return true
            }else{
                uniqueElements.insert(num)
            }
        }
        return false
    }
}