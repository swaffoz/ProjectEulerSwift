//
//  Problem4Tests.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 6/17/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Cocoa
import XCTest

class Problem4Tests: XCTestCase {
    
    func testProblem4Correct() {
        XCTAssert(problem4() == 906609, "Pass")
    }
    
    func testProblem4Performance() {
        self.measureBlock() {
            problem4()
        }
    }
    
}