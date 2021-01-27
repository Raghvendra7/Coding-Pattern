//
//  LongestSubStringWithDistinct.swift
//  
//
//  Created by Raghvendra Shri on 27/01/21.
//

import Foundation
/*
Problem Statement #
Given a string, find the length of the longest substring in it with no more than K distinct characters.
Example 1:
Input: String="araaci", K=2
Output: 4
Explanation: The longest substring with no more than '2' distinct characters is "araa".
Example 2:
Input: String="araaci", K=1
Output: 2
Explanation: The longest substring with no more than '1' distinct characters is "aa".
Example 3:
Input: String="cbbebi", K=3
Output: 5
Explanation: The longest substrings with no more than '3' distinct characters are "cbbeb" & "bbebi".
*/

public func longestSubStringWithDistinct(k: Int, s: String) -> Int {
    var maxLength = 0
    var start = 0
    var frequency = [String.Element: Int]()
    let stringArray = Array(s)
    for end in 0..<stringArray.count {
        let char = stringArray[end]
        if let val = frequency[char] {
            frequency[char] = val + 1
        } else {
            frequency[char] = 1
        }
        while frequency.count > k {
            let lchar = stringArray[start]
            frequency[lchar]! -= 1
            if frequency[lchar] == 0 {
                frequency.removeValue(forKey: lchar)
            }
            start += 1
        }
        maxLength = max(maxLength, end - start + 1)
    }
    return maxLength
}
longestSubStringWithDistinct(k: 2, s: "araaci")
