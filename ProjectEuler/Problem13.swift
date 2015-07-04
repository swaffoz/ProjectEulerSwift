//
//  Problem13.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 6/29/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Foundation

func problem13WithBundle(bundle: NSBundle) -> Int {
    
    let numberFilePath = bundle.pathForResource("Problem13", ofType: "txt")
    
    if let p = numberFilePath {
        if let text = String(contentsOfFile: p, encoding: NSUTF8StringEncoding, error: nil) {
            
            // The result
            let numArray = text.componentsSeparatedByString("\n").map({ NSDecimalNumber(string: $0) })
            var sum:NSDecimalNumber = 0
            for num in numArray {
                sum = sum.decimalNumberByAdding(num)
            }
            
            let sumChars = Array(sum.stringValue)
            return String(sumChars[0..<10]).toInt()!
        }
    }
    
    return -1
}

func problem13() -> Int {
    return problem13WithBundle(NSBundle.mainBundle())
}