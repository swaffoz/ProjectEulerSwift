//
//  main.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 6/16/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Foundation

let problems: [()->Int] = [problem1, problem2, problem3, problem4,
                           problem5, problem6, problem7, problem8,
                           problem9, problem10, problem11, problem12,
                           problem13]

for var i = 0; i < problems.count; i++ {
    let start = NSDate()
    let result = problems[i]()
    let duration = NSDate().timeIntervalSinceDate(start)
    
    println("Problem \(i+1): \(result)\t Found in \(duration) seconds")
}