//
//  ZSMathTests.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 6/17/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Cocoa
import XCTest

class ZSMathTests: XCTestCase {
    
    func testFibonacci() {
        // Test the first couple values
        var actualFibonacci = [0, 1, 1, 2, 3, 5]
        var testDidPass = true
        
        for var i = 0; i <= 5; i++ {
            if actualFibonacci[i] != ZSMath.fibonacci(i) {
                testDidPass = false
            }
        }
        
        XCTAssert(testDidPass, "Pass")
    }
    
    func testFibonacciSequence() {
        var actualFibonacci = [0, 1, 1, 2, 3, 5]
        var testDidPass = true
        
        ZSMath.fibbonacciSequence(UpToValue: 5)
        
        XCTAssert(testDidPass, "Pass")
    }

    func testPrimeFactors() {
        var testValues = [123, 456, 789]
        var testSolutions = [[3, 41],
                             [3, 19, 114, 228, 456],
                             [3, 263]]
        var testDidPass = true
    
        for var i = 0; i < 3; i++ {
            if testSolutions[i] != ZSMath.primeFactors(ofNumber: testValues[i]) {
                testDidPass = false
            }
        }
        
        XCTAssert(testDidPass, "Pass")
    }
    
    func testGeneratePrimes() {
        let actualPrimes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
        let testPrimes = ZSMath.generatePrimes(upToNumber: 30)
        
        XCTAssert(actualPrimes == testPrimes, "Pass")
    }
    
    func testGenerateNPrimes() {
        let actualPrimes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
        let testPrimes = ZSMath.generateNPrimes(10)
        
        XCTAssert(actualPrimes == testPrimes, "Pass")
    }
    
    func testFactorial() {
        let actualFactorial5:Double = (5 * 4 * 3 * 2 * 1)
        let testFactorial5:Double = ZSMath.factorial(5)
        
        
        let actualFactorial10:Double = (10 * 9 * 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1)
        let testFactorial10:Double = ZSMath.factorial(10)

        XCTAssert(actualFactorial5 == testFactorial5 && actualFactorial10 == testFactorial10, "Pass")
    }
    
}