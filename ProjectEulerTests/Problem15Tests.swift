//
//  Problem15Tests.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 7/6/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Cocoa
import XCTest

class Problem15Tests: XCTestCase {
    
    func testProblem15Correct() {
        XCTAssert(problem15() == 137846528820, "Problem 15 should equal 137846528820")
    }
    
    func testProblem15Performance() {
        self.measureBlock() {
            problem15()
        }
    }
    
}