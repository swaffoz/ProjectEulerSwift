//
//  Problem8Tests.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 6/25/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Cocoa
import XCTest

class Problem8Tests: XCTestCase {
    
    func testProblem8Correct() {
        XCTAssert(problem8() == 23514624000, "Problem 8 should equal 23514624000")
    }
    
    func testProblem8Performance() {
        self.measureBlock() {
            problem8()
        }
    }
    
}
