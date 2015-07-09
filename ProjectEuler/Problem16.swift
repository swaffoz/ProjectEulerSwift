//
//  Problem16.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 7/9/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Foundation

func problem16() -> Int {
    
    let power = String(format:"%f", pow(2.0, 1000.0))
    let digits = map(power) { return String($0).toInt() ?? 0 }
    let sum = digits.reduce(0, combine: +)
    
    return sum
}