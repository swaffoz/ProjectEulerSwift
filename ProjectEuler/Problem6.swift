//
//  Problem6.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 6/21/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Foundation

func problem6() -> Int {
    var sumOfSquares = 0, squareOfSums = 0

    map(1...100) {x in sumOfSquares += (x*x) }

    map(1...100) {y in squareOfSums += y }

    squareOfSums *= squareOfSums
    
    return abs(sumOfSquares - squareOfSums)
}