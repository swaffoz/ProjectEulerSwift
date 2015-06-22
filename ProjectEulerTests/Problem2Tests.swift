//
//  Problem2Tests.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 6/17/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Cocoa
import XCTest

class Problem2Tests: XCTestCase {
    
    func testProblem2Correct() {
        XCTAssert(problem2() == 4613732, "Problem 2 should equal 4613732")
    }
    
    func testProblem2Performance() {
        self.measureBlock() {
            problem2()
        }
    }
    
}