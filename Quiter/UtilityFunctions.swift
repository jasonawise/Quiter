//
//  UtilityFunctions.swift
//  Quiter
//
//  Created by Jason Wise on 5/30/22.
//

import Foundation


func numberOfDaysBetweenDates(startDate: Date, endDate: Date) -> Int {
    
    let calendar = Calendar.current
    
    let components = calendar.dateComponents([.day], from: startDate, to: endDate)

    return components.day!
}
    
func typeCheck(varToTypeCheck: Any) {
    print(type(of: varToTypeCheck))
}
