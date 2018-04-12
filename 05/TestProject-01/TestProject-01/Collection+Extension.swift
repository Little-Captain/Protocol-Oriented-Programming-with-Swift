//
//  Collection+Extension.swift
//  TestProject-01
//
//  Created by Liu-Mac on 4/4/18.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

import Foundation

extension Collection where Self: ExpressibleByArrayLiteral {
    
    func evenElements() -> [Element] {
        
        var index = startIndex
        var result: [Element] = []
        var i = 0
        repeat {
            if i % 2 == 0 {
                result.append(self[index])
            }
            index = self.index(index, offsetBy: 1)
            i += 1
        } while (index != endIndex)
        
        return result
    }
    
    func shuffle() -> [Element] {
        
        return sorted(by: { _, _ in arc4random() < arc4random() })
    }
}

extension Collection where Element: Comparable {
    
}

enum TKDBeltColors: Int {
    case White, Yellow, Orage, Green, Blue, Purple, Red, FirstDegreeBlack, SecondDegreeBlack, ThirdDegreeBlack, ForthDegreeBlack
}

enum TKDColorRank: Int {
    case NoRank, Probationary, Decided, Intermediate, Senior
}

protocol TKDRank {
    var color: TKDBeltColors { get }
    var rank: TKDColorRank { get }
    var passFailTests: [String: Bool] { get set }
}

extension TKDRank {
    mutating func setPassFail(testName: String, pass: Bool) {
        passFailTests[testName] = pass
    }
}
