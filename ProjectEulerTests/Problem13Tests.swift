//
//  Problem13Tests.swift
//  
//
//  Created by Zane Swafford on 7/3/15.
//
//

import Cocoa
import XCTest

class Problem13Tests: XCTestCase {
    
    func testProblem13Correct() {
        XCTAssert(problem13WithBundle(NSBundle(forClass: Problem13Tests.self)) == 5537376230, "Problem 13 should equal 5537376230")
    }
    
    func testProblem13Performance() {
        self.measureBlock() {
            problem13()
        }
    }
    
}