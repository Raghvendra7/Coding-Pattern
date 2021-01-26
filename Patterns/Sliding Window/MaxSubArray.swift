//
//  MaxSubArray.swift
//  
//
//  Created by Raghvendra Shri on 26/01/21.
//

import Foundation
/*
Problem Statement #
Given an array of positive numbers and a positive number ‘k’, find the maximum sum of any contiguous subarray of size ‘k’.
Example 1:
Input: [2, 1, 5, 1, 3, 2], k=3
Output: 9
Explanation: Subarray with maximum sum is [5, 1, 3].
Example 2:
Input: [2, 3, 4, 1, 5], k=2
Output: 7
Explanation: Subarray with maximum sum is [3, 4].
*/
func maxSubArrayOf(size: Int, arr: [Int]) -> Int {
    var maxSum = 0, windowSum = 0
    var start = 0
    for end in 0..<arr.count {
        windowSum += arr[end]
        if end >= size - 1 {
            maxSum = max(maxSum, windowSum)
            windowSum -= arr[start]
            start += 1
    }
    }
    return maxSum
}

//maxSubArrayOf(size: 3, arr: [2, 1, 5, 1, 3, 2])
