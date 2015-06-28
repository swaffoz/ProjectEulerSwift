//
//  Problem10.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 6/25/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Foundation

func problem10() -> Int {
    
    //return ZSMath.generatePrimes(upToNumber: 2_000_000).reduce(0, combine: +)
    
    // This method using the Sieve of Eratosthenes is nearly 10x faster than
    // using the built-in reduce.
    
    var sieve = [Bool](count: 2_000_000, repeatedValue: true)
    
    var sum = 0
    for i in 2..<2_000_000 {
        if sieve[i] {
            sum += i
            
            for var multiple = i + i; multiple < 2_000_000; multiple += i {
                sieve[multiple] = false
            }
        }
    }
    
    return sum
}