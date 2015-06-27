//
//  Problem10Tests.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 6/26/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Cocoa
import XCTest

class Problem10Tests: XCTestCase {

    func testProblem10Correct() {
        XCTAssert(problem10() == 142913828922, "Problem 10 should equal 142913828922")
    }
    
    func testProblem10Performance() {
        self.measureBlock() {
            problem10()
        }
    }
}
