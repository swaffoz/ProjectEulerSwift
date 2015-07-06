//
//  Problem15.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 7/6/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Foundation

func problem15() -> Int {
    return Int( ZSMath.factorial(2 * 20) / pow(ZSMath.factorial(20), 2) )
}