//
//  Prolbem18Tests.swift
//  
//
//  Created by Zane Swafford on 7/17/15.
//
//

import Cocoa
import XCTest

class Problem18Tests: XCTestCase {
    
    func testProblem18Correct() {
        XCTAssert(problem18WithBundle(NSBundle(forClass: Problem18Tests.self)) == 1074, "Problem 18 should equal 1074 ")
    }
    
    func testProblem18Performance() {
        self.measureBlock() {
            problem18()
        }
    }
    
}