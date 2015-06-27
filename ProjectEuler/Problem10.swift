//
//  Problem10.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 6/25/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Foundation

func problem10() -> Int {
    // This method takes around 18 seconds on my Mac Mini :(
    // The prime number generation takes < 1.00s but the combine takes the 
    //      longest amount of time.
    // I could not find a method of solving this problem that I found suitable
    // to both speed and readability so I settled with this.
    
    return ZSMath.generatePrimes(upToNumber: 2000000).reduce(0, combine: +)
}