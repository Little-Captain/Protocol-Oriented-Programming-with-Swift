//
//  Double+Extension.swift
//  TestProject-01
//
//  Created by Liu-Mac on 4/4/18.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

import Foundation

extension Double {
    
    func currencyString() -> String {
        
        let divisor = pow(10.0, 2.0)
        let num = (self * divisor).rounded() / divisor
        
        return "$\(num)"
    }
}
