//
//  Problem19.swift
//  ProjectEuler
//
//  Created by Zane Swafford on 7/17/15.
//  Copyright (c) 2015 Zane Swafford. All rights reserved.
//

import Foundation

func problem19() -> Int {
    
    var numberOfSundays = 0
    var calendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)!
    
    for year in (1901...2000) {
        for month in (1...12) {
            var firstDayComponents = NSDateComponents()
            
            firstDayComponents.day = 1
            firstDayComponents.month = month
            firstDayComponents.year = year
           
            var date = calendar.dateFromComponents(firstDayComponents)!
            
            var weekdayComponents = calendar.components(.CalendarUnitWeekday, fromDate:date)
            
            if weekdayComponents.weekday == 1 {
                numberOfSundays++
            }
        }
    }
    
    return numberOfSundays
}