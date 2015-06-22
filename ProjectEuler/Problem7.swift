//
//  Problem7.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 6/22/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Foundation

func problem7() -> Int {
    if let result = ZSMath.generateNPrimes(10001).last {
        return result
    } else {
        return -1
    }
}