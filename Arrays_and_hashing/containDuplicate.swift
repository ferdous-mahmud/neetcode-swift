import Foundation

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        return Set(nums).count != nums.count
    }
}

let sol = Solution()

if let input = readLine() {
    if let data = input.data(using: .utf8) {
        let decoder = JSONDecoder()
        let numbers = try decoder.decode([Int].self, from: data)
            
        let output = sol.containsDuplicate(numbers)
        print(output)
    } else {
        print("Could not convert file contents to data.")
    }
}

        