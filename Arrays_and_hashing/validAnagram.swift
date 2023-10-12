import Foundation

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        return s.sorted() == t.sorted()
    }
}

let sol = Solution()

// Inputs
let s = "rat⠀", t = "tar⠀"

let output = sol.isAnagram(s, t)
print(output)

        