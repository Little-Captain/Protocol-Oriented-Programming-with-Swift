//
//  main.swift
//  TextValidation
//
//  Created by Liu-Mac on 4/9/18.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

import Foundation

func test() {
    
    let validator = AlphaValidation.sharedInstance
    
    let test = "fss123"
    
    print(validator.validateString(str: test))
    if let matchingStr = validator.getMatchingString(str: test) {
        print(matchingStr)
    }
}

func test1() {
    
    let myString1 = "abcxyz"
    let myString2 = "abc123"
    let validation = AlphaValidation.sharedInstance
    print(validation.validateString(str: myString1))
    print(validation.validateString(str: myString2))
    print(validation.getMatchingString(str: myString1) ?? "")
    print(validation.getMatchingString(str: myString2) ?? "")
}

test()
test1()
