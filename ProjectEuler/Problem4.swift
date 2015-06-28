//
//  Problem4.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 6/16/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Foundation

func problem4() -> Int {
    
    var maxProduct = 0
    for var x = 999; x > 99; x-- {
        for var y = 999; y > 99; y--  {
            var product = x * y
            if  product > maxProduct && String(product) == String(reverse(String(product))) {
                maxProduct = product
            }
        }
    }
    
    return maxProduct
}