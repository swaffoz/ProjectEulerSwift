//
//  Problem12Tests.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 6/29/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Cocoa
import XCTest

class Problem12Tests: XCTestCase {

    func testProblem12Correct() {
        XCTAssert(problem12() == 76576500, "Problem 12 should equal 70600674")
    }
    
    func testProblem12Performance() {
        self.measureBlock() {
            problem12()
        }
    }

}
