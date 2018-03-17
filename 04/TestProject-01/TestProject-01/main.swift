//
//  main.swift
//  TestProject-01
//
//  Created by Liu-Mac on 3/15/18.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

import Foundation

testPerson()

var intQ2 = GenericQueue<Int>()
intQ2.addItem(2)
intQ2.addItem(4)
if let i = intQ2.getItem() {
    print(i)
}
intQ2.addItem(6)

var displayDelegate = MyDisplayNameDelegate()
var person = Person1(displayNameDelegate: displayDelegate)

person.firstName = "Jon"
person.lastName = "Hoffman"

