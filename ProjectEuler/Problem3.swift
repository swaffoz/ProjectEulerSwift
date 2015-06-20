//
//  Problem3.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 6/16/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Foundation

func problem3() -> Int {
    if let result = ZSMath.primeFactors(ofNumber: 600851475143).last {
        return result
    } else {
        return -1
    }
}
