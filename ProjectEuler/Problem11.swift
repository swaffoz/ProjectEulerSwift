//
//  Problem1Z.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 6/25/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Foundation

func problem11WithBundle(bundle: NSBundle) -> Int {
    
    let numberFilePath = bundle.pathForResource("Problem11", ofType: "txt")
    
    if let p = numberFilePath {
        if let text = String(contentsOfFile: p, encoding: NSUTF8StringEncoding, error: nil) {
            let grid = text.componentsSeparatedByCharactersInSet(.whitespaceAndNewlineCharacterSet()).map({ return $0.toInt() })
            
            // I'm using closures instead of global functions to prevent XCode from 
            //  autosugessting them across the whole project.
            let horizontalProductOfIndexInGrid:(Int, [Int?])->(Int) = {
                if $0 < 340 {
                    return $1[$0]! * $1[$0+20]! * $1[$0+40]! * $1[$0+60]!
                } else {
                    return 0
                }
            }
            
            let verticalProductOfIndexInGrid:(Int, [Int?])->(Int) = {
                if $0 % 20 < 17 && $0 < 397 {
                    return $1[$0]! * $1[$0+1]! * $1[$0+2]! * $1[$0+3]!
                } else {
                    return 0
                }
            }
            
            let forwardProductOfIndexInGrid:(Int, [Int?])->(Int) = {
                if $0 % 20 > 3 && $0 < 333 {
                    return $1[$0]! * $1[$0+19]! * $1[$0+38]! * $1[$0+57]!
                } else {
                    return 0
                }
            }
            
            let backwardProductOfIndexInGrid:(Int, [Int?])->(Int) = {
                if $0 % 20 < 17 && $0 < 337 {
                    return $1[$0]! * $1[$0+21]! * $1[$0+42]! * $1[$0+63]!
                } else {
                    return 0
                }
            }
            
            var max = 0
            
            for i in (0..<grid.count) {
                var productsOfI = [horizontalProductOfIndexInGrid(i, grid),
                                   verticalProductOfIndexInGrid(i, grid),
                                   forwardProductOfIndexInGrid(i, grid),
                                   backwardProductOfIndexInGrid(i, grid)]
                
                productsOfI.sort(>)
                
                let largestProductOfI = productsOfI.first!
                
                max = largestProductOfI > max ? largestProductOfI : max
            }
            
            return max
        }
    }
    
    return -1
}

func problem11() -> Int {
    return problem11WithBundle(NSBundle.mainBundle())
}