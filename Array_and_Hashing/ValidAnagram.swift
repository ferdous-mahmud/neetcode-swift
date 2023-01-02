/**
 * Question Link: https://leetcode.com/problems/valid-anagram/
 */
 
func isAnagram(_ s: String, _ t: String) -> Bool {
    
    if t.sorted() == s.sorted() {
        return true
    } else{
        return false
    }
}