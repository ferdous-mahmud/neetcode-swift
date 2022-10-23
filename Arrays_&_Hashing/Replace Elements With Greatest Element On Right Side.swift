/*
    Given an array arr, replace every element in that array with the greatest element among the elements to its right, \
    and replace the last element with -1. 
    
    After doing so, return the array.

    Hints: Iterate arry last to first :)
    
    Time: O(n)
    Space: O(n) - Swift methods parameters are immutable
*/
class Solution {
    func replaceElements(_ arr: [Int]) -> [Int] {
        var res = [Int]()
        
        var max = -1
        res.append(max)
        
        for num in arr.reversed() {
            
            if(num > max){
                max = num
            }
            
            res.insert(max, at: 0)
        }
            
        res.removeFirst()
        return res
    }
}