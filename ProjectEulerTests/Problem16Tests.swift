//
//  Problem16Tests.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 7/9/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Cocoa
import XCTest

class Problem16Tests: XCTestCase {
    
    func testProblem16Correct() {
        XCTAssert(problem16() == 1366, "Problem 16 should equal 1366")
    }
    
    func testProblem16Performance() {
        self.measureBlock() {
            problem16()
        }
    }
    
}
