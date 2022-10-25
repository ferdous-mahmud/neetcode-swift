/*
    Given a string s consisting of words and spaces, return the length of the last word in the string.
    A word is a maximal substring consisting of non-space characters only.

    Hints: Start iterating form end and remove end whitespace then count lenght
    
    Time: O(n)
    Space: O(1)
*/

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var lenght = 0
        var isFoundChar = false
        
        for letter in s.reversed() {
            
            if letter != " "{
                isFoundChar = true
            }
            
            if (letter != " " && isFoundChar) {
                lenght += 1 
            }
            
            if (letter == " " && isFoundChar) {
                break 
            }
        }
        
        return lenght
    }
}