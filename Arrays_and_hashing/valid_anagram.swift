// Time complexity: O(n log n)
// Space complexity: O(1)

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        return t.sorted() == s.sorted()
    }
}