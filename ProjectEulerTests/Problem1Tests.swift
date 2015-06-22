//
//  Problem1Tests.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 6/16/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Cocoa
import XCTest

class Problem1Tests: XCTestCase {
    
    func testProblem1Correct() {
        XCTAssert(problem1() == 233168, "Problem 1 should equal 233168")
    }
    
    func testProblem1Performance() {
        self.measureBlock() {
            problem1()
        }
    }
    
}