//
//  Problem19Tests.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 7/17/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Cocoa
import XCTest

class Problem19Tests: XCTestCase {
    
    func testProblem19Correct() {
        XCTAssert(problem19() == 171, "Problem 19 should equal 171")
    }
    
    func testProblem19Performance() {
        self.measureBlock() {
            problem19()
        }
    }
    
}