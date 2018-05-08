//
//  main.swift
//  TestProject
//
//  Created by Liu-Mac on 4/26/18.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

import Foundation

let singleA = MySingletonInstance
let singleB = MySingleton.sharedInstance
let singleC = MySingleton.sharedInstance

singleB.number = 2

print(singleA.number)
print(singleB.number)
print(singleC.number)

singleC.number = 3

print(singleA.number)
print(singleB.number)
print(singleC.number)

var burger = Burger(builder: CheeseBurgerBuilder())
burger.showBurger()
burger.bacon = true
burger.showBurger()

var burgerBuilder = BurgerBuilder()
burgerBuilder.setCheese(true)
burgerBuilder.setBacon(true)
var jonBurger = burgerBuilder.buildBurgerOld("Jon's Burger")
