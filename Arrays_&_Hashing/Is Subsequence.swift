/*
   Given two strings s and t, return true if s is a subsequence of t, or false otherwise.

   A subsequence of a string is a new string that is formed from the original string by deleting some (can be none) of the 
   characters without disturbing the relative positions of the remaining characters. (i.e., "ace" is a subsequence of 
   "abcde" while "aec" is not).

    Hints: two pointer aproach
    
    Time: O(n)
    Space: O(1)
*/

class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        
        var index = 0
        
            for tt in t {
                let ss = s[index]
                
                if ss == String(tt) {
                    index += 1
                }
            }
        
        if index == s.count {
            return true
        }
        
        return false
    }
}

extension String {
    subscript(i: Int) -> String {
        return  i < count ? String(self[index(startIndex, offsetBy: i)]) : ""
    }
}