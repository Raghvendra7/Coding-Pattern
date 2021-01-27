//
//  nonRepeatSubstring.swift
//  
//
//  Created by Raghvendra Shri on 27/01/21.
//

import Foundation
/*
Problem Statement
Given a string, find the length of the longest substring which has no repeating characters.
Example 1:
Input: String="aabccbb"
Output: 3
Explanation: The longest substring without any repeating characters is "abc".
Example 2:
Input: String="abbbb"
Output: 2
Explanation: The longest substring without any repeating characters is "ab".
Example 3:
Input: String="abccde"
Output: 3
Explanation: Longest substrings without any repeating characters are "abc" & "cde".
*/
public func nonRepeatSubstring(s: String) -> Int {
    var maxLength = 0
    var start = 0
    var frequency = [String.Element: Int]()
    let stringArray = Array(s)
    for end in 0..<stringArray.count {
        let char = stringArray[end]
        if let val = frequency[char] {
            start = max(start, val + 1)
        } else {
            frequency[char] = end
        }
        maxLength = max(maxLength, end - start + 1)
    }
    return maxLength
}

nonRepeatSubstring(s: "aabccbb")
