import Foundation

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var sDictonary: [Character: Int] = [:]
        var tDictonary: [Character: Int] = [:]

        for sChar in s {
            if sDictonary.keys.contains(sChar){
                sDictonary[sChar]! += 1;
            }else{
                sDictonary[sChar] = 1;
            }
        }

        for tChar in t {
            if tDictonary.keys.contains(tChar){
                tDictonary[tChar]! += 1;
            }else{
                tDictonary[tChar] = 1;
            }
        }

        return sDictonary == tDictonary
    }
}

let sol = Solution()

// Inputs
let s = "rat", t = "car"

let output = sol.isAnagram(s, t)
print(output)
        