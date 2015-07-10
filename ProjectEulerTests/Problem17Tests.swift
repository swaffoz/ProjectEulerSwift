//
//  Problem17Tests.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 7/10/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Cocoa
import XCTest

class Problem17Tests: XCTestCase {
    
    func testProblem17Correct() {
        XCTAssert(problem17() == 21124, "Problem 17 should equal 21124")
    }
    
    func testProblem17Performance() {
        self.measureBlock() {
            problem17()
        }
    }
    
}
