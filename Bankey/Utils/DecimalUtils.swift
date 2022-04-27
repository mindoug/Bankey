//
//  DecimalUtils.swift
//  Bankey
//
//  Created by Mindy Douglas on 4/25/22.
//

import Foundation

extension Decimal {
    
    // conversion double to decimal
    var doubleValue: Double {
        return NSDecimalNumber(decimal:self).doubleValue
    }
}
