//
//  Problem12.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 6/28/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Foundation

func problem12() -> Int {
    for var i = 2, triangleNumber = 1, divisors = 0; true; triangleNumber += i, i++ {
        var divisors = 2
        let limit = Int(ceil(sqrt(Double(triangleNumber))))
        
        for var naturalNumber = 2; naturalNumber <= limit; naturalNumber++ {
            if triangleNumber % naturalNumber == 0 {
                divisors += 2
            }
        }
        
        if divisors > 500 {
            return triangleNumber
        }
    }
}