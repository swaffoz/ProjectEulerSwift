//
//  Problem1.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 6/16/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Foundation

func problem1() -> Int {
    
    var sum = 0
    for i in 0..<1000 {
        if i % 3 == 0 || i % 5 == 0 {
            sum += i
        }
    }
    
    return sum
}