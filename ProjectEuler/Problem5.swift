//
//  Problem5.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 6/17/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Foundation

func problem5() -> Int {
    
    var divisorMax = 20
    var primes = ZSMath.generatePrimes(upToNumber: divisorMax)
    var result = 1;
    
    for (var i = 0; i < primes.count; i++) {
        var a = Double(floor(log(Double(divisorMax)) / log(Double(primes[i]))))
        result = Int(Double(result) * pow(Double(primes[i]), a))
    }
    
    return result
}