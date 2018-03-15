//
//  Int+Extension.swift
//  TestProject-01
//
//  Created by Liu-Mac on 3/7/18.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

import Foundation

extension Int {
    func factorial() -> Int {
        
        assert(self >= 0, "不能对负数求阶乘!")
        
        var answer = 1
        for x in Swift.stride(from: self, to: 1, by: -1) {
            answer *= x
        }
        return answer
    }
}
