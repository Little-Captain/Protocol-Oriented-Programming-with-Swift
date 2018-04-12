//
//  String+Extension.swift
//  TestProject-01
//
//  Created by Liu-Mac on 4/4/18.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

import Foundation

extension String {
    
    func getFirstChar() -> Character? {
        
        guard !isEmpty else { return nil }
        
        return first!
    }
    
    subscript (r: Range<Int>) -> String {
        get {
            return String(self[index(startIndex, offsetBy: r.lowerBound)..<index(startIndex, offsetBy: r.upperBound)])
        }
    }
}
