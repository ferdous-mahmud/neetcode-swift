/*
    Given two strings s and t, return true if t is an anagram of s, and false otherwise.

    An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, 
    typically using all the original letters exactly once.
    
    Time: O(n log(n))
    Space: O(1)
*/

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
       if t.sorted() == s.sorted() {
            return true
       } else {
            return false
       }
    }
}