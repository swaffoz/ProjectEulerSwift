//
//  Problem14Tests.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 7/4/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Cocoa
import XCTest

class Problem14Tests: XCTestCase {

    func testProblem14Correct() {
        XCTAssert(problem14() == 837799, "Problem 14 should equal 837799")
    }
    
    func testProblem14Performance() {
        self.measureBlock() {
            problem14()
        }
    }

}
