/**
 * Question Link: https://leetcode.com/problems/contains-duplicate/
 */

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