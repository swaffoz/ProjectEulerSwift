//
//  Problem5Tests.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 6/17/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Cocoa
import XCTest

class Problem5Tests: XCTestCase {
    
    func testProblem5Correct() {
        XCTAssert(problem5() == 232792560, "Pass")
    }
    
    func testProblem5Performance() {
        self.measureBlock() {
            problem5()
        }
    }
    
}