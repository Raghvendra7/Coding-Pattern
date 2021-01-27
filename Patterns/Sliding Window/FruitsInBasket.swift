//
//  FruitsInBasket.swift
//  
//
//  Created by Raghvendra Shri on 27/01/21.
//

import Foundation
/*
Problem Statement
Given an array of characters where each character represents a fruit tree, you are given two baskets and your goal is to put maximum number of fruits in each basket. The only restriction is that each basket can have only one type of fruit.
You can start with any tree, but once you have started you can’t skip a tree. You will pick one fruit from each tree until you cannot, i.e., you will stop when you have to pick from a third fruit type.
Write a function to return the maximum number of fruits in both the baskets.
Example 1:
Input: Fruit=['A', 'B', 'C', 'A', 'C']
Output: 3
Explanation: We can put 2 'C' in one basket and one 'A' in the other from the subarray ['C', 'A', 'C']
Example 2:
Input: Fruit=['A', 'B', 'C', 'B', 'B', 'C']
Output: 5
Explanation: We can put 3 'B' in one basket and two 'C' in the other basket.
This can be done if we start with the second letter: ['B', 'C', 'B', 'B', 'C']
*/

public func fruitsInBasket(k: Int = 2, s: String) -> Int {
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

fruitsInBasket(s: "ABCAC")
