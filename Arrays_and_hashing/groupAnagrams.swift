import Foundation

class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {

        var result: [[String]] = []
        var givenItem: [String] = []

        for str in strs {
            var arrS: [String] = []
            for s in strs {
                if str != s {
                    if str.sorted() == s.sorted() && givenItem.contains(s) == false {
                        arrS.append(s)
                        givenItem.append(s)
                    }
                }
                if arrS.isEmpty {
                    arrS.append(str)
                }
            }
            result.append(arrS)
        }

        return result
    }
}

let sol = Solution()

// Inputs
let strs = ["eat","tea","tan","ate","nat","bat"]

let output = sol.groupAnagrams(strs)
print(output)

// Output
// [["bat"],["nat","tan"],["ate","eat","tea"]]