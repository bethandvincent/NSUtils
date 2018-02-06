//
//  Date+Extensions.swift
//  NSUtils
//
//  Created by Jack Colley on 01/02/2018.
//  Copyright © 2018 Netsells. All rights reserved.
//

import Foundation

extension Date {
    // I'm not sure period is the correct term for AM or PM but thats what StackOverflow says ...
    // https://stackoverflow.com/questions/1468857/what-is-am-pm-called
    public func formatForTime(includePeriod: Bool) -> String {
        let dateFormatter = NSUtilsDateFormatter()

        if(includePeriod) {
            dateFormatter.dateFormat = "HH:mm a"
        } else {
            dateFormatter.dateFormat = "HH:mm"
        }

        return dateFormatter.string(from: self)
    }

    public func formatForDate() -> String {
        let dateFormatter = NSUtilsDateFormatter()

        dateFormatter.dateFormat = "dd/MM/yyyy"

        return dateFormatter.string(from: self)
    }

    public func formatForTimestamp() -> String {
        let dateFormatter = NSUtilsDateFormatter()

        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"

        return dateFormatter.string(from: self)
    }
}