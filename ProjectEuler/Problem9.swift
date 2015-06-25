//
//  Problem9.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 6/25/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Foundation

func problem9() -> Int {
    let possibleValuesForA = filter(1...500) {
        (1000 * (500 - $0) % (1000 - $0)) == 0
    }

    if let a = possibleValuesForA.first {
        let b = 1000 * (500 - a) / (1000 - a)
        
        let c = 1000 - a - b
        
        return a * b * c
    } else {
        return -1
    }
}