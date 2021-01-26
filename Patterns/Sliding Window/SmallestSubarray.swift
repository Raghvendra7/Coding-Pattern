//
//  SmallestSubarray.swift
//  
//
//  Created by Raghvendra Shri on 26/01/21.
//

import Foundation
/*
Problem Statement
Given an array of positive numbers and a positive number ‘S’, find the length of the smallest contiguous subarray whose sum is greater than or equal to ‘S’. Return 0, if no such subarray exists.
Example 1:
Input: [2, 1, 5, 2, 3, 2], S=7
Output: 2
Explanation: The smallest subarray with a sum great than or equal to '7' is [5, 2].
Example 2:
Input: [2, 1, 5, 2, 8], S=7
Output: 1
Explanation: The smallest subarray with a sum greater than or equal to '7' is [8].
Example 3:
Input: [3, 4, 1, 1, 6], S=8
Output: 3
Explanation: Smallest subarrays with a sum greater than or equal to '8' are [3, 4, 1] or [1, 1, 6].
*/
func smallestSubArrayWith(sum: Int, arr: [Int]) -> Int {
    var minLength = Int.max, windowSum = 0
    var start = 0
    for end in 0..<arr.count {
        windowSum += arr[end]
        while windowSum >= sum {
            minLength = min(minLength, end - start + 1)
            windowSum -= arr[start]
            start += 1
        }
    }
    return minLength == Int.max ? 0 : minLength
}

//smallestSubArrayWith(sum: 7, arr: [2, 1, 5, 2, 3, 2])
