//
//  Problem17.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 7/10/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Foundation

func problem17() -> Int {
    
    var formatter = NSNumberFormatter()
    formatter.numberStyle = .SpellOutStyle
    
    var numberString = ""
    for i in (1...1000) {
        // SpellOutStyle does not use British "and" in
        // numbers greater than 100 so we have to add it in manually
        var iSpelledOut = formatter.stringFromNumber(i)!
        if i > 100 && i % 100 != 0 {
            iSpelledOut += "and"
        }
        
        numberString += iSpelledOut
    }
    
    // Remove dashes and spaces
    let filteredCharArray = filter(numberString) {!contains("- ", $0)}
    return count(filteredCharArray)
}