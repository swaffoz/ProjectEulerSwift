//
//  Problem18.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 7/17/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Foundation

func problem18WithBundle(bundle: NSBundle) -> Int {
    
    let numberFilePath = bundle.pathForResource("Problem18", ofType: "txt")
    
    if let p = numberFilePath {
        if let text = String(contentsOfFile: p, encoding: NSUTF8StringEncoding, error: nil) {
            
            var triangle:Array<[Int]> = text.componentsSeparatedByString("\n").map { line in line.componentsSeparatedByString(" ").map({$0.toInt()!}) }
            
            for y in reverse((0..<(triangle.count-1))) {
                for x in (0..<triangle[y].count) {
                    triangle[y][x] += max(triangle[y+1][x], triangle[y+1][x+1])
                }
            }
            
            return triangle[0][0]
        }
    }
    
    return -1
}

func problem18() -> Int {
    return problem18WithBundle(NSBundle.mainBundle())
}