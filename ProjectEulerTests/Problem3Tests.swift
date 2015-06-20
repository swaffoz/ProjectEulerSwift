//
//  Problem3Tests.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 6/17/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Cocoa
import XCTest

class Problem3Tests: XCTestCase {
    
    func testProblem3Correct() {
        XCTAssert(problem3() == 6857, "Pass")
    }
    
    func testProblem3Performance() {
        self.measureBlock() {
            problem3()
        }
    }
    
}