//
//  Problem7Tests.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 6/22/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Cocoa
import XCTest

class Problem7Tests: XCTestCase {
    
    func testProblem7Correct() {
        XCTAssert(problem7() == 104743, "Problem 7 should equal 104743")
    }
    
    func testProblem7Performance() {
        self.measureBlock() {
            problem7()
        }
    }
    
}