//
//  main.swift
//  TestProject-01
//
//  Created by Liu-Mac on 4/3/18.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

import Foundation

print("Hello, World!"[0..<3])

func test() {
    
    let i = 21
    
    print(i.squared)
    
    let d = 2.125123123123123
    
    print(d.currencyString())
}

test()

print(["123", "afs"].shuffle())
print(["123", "afs"].evenElements())
