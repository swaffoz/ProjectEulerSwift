//
//  Problem9Tests.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 6/25/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Cocoa
import XCTest

class Problem9Tests: XCTestCase {

    func testProblem9Correct() {
        XCTAssert(problem9() == 31875000, "Problem 9 should equal 31875000")
    }
    
    func testProblem9Performance() {
        self.measureBlock() {
            problem9()
        }
    }

}