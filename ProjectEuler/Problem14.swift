//
//  Problem14.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 7/4/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Foundation

func problem14() -> Int {
    let collatz:(Int)->(Int) = {n in n % 2 == 0 ? n/2 : 3*n + 1}
    
    var maxN = 1
    var maxCount = 0
    
    for startingN in (1...1_000_000) {
        var count = 0
        var n = startingN
        while n != 1 {
            n = collatz(n)
            count++
        }
        
        if count > maxCount {
            maxCount = count
            maxN = startingN
        }
    }

    return maxN
}