//
//  Problem6Tests.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 6/22/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Cocoa
import XCTest

class Problem6Tests: XCTestCase {

    func testProblem6Correct() {
        XCTAssert(problem6() == 25164150, "Problem 6 should equal 25164150")
    }
    
    func testProblem6Performance() {
        self.measureBlock() {
            problem6()
        }
    }

}