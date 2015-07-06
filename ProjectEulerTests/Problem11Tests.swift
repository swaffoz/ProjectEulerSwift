//
//  Problem11Tests.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 6/27/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Cocoa
import XCTest

class Problem11Tests: XCTestCase {

    func testProblem11Correct() {
        XCTAssert(problem11WithBundle(NSBundle(forClass: Problem11Tests.self)) == 70600674, "Problem 11 should equal 70600674")
    }
    
    func testProblem11Performance() {
        self.measureBlock() {
            problem11()
        }
    }

}