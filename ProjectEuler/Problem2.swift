//
//  Problem2.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 6/16/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Foundation

func problem2() -> Int {
    
    var f = ZSMath.fibbonacciSequence(UpToValue: 4_000_000)
    
    f = f.filter{ n in n % 2 == 0 }
    
    return f.reduce(0,combine: +);
}