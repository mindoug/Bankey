//
//  DecimalUtils.swift
//  Bankey
//
//  Created by Mindy Douglas on 4/25/22.
//
// Professional iOS Course JRasmusson - Udemy

import Foundation

extension Decimal {
    
    // conversion double to decimal
    var doubleValue: Double {
        return NSDecimalNumber(decimal:self).doubleValue
    }
}
