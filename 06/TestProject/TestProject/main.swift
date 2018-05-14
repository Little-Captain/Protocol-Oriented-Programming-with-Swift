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

let str = "abc123"
let validator1 = getValidator(alphaCharacters: true, numericCharacters: false)
print("String validated: \(validator1!.validateString(str: str))")

let validator2 = getValidator(alphaCharacters: true, numericCharacters: true)
print("String validated: \(validator2!.validateString(str: str))")

let message = PlainTextMessage(messageString: "Plain Text Message")
var sender = SMSSender()
MessageingBridge.sendMessage(message: message, sender: sender)

let ourHouse = HouseProxy()
let basement = FloorPlan(bedRooms: 0, utilityRooms: 1, bathRooms: 1, kitchen: 0, livingRoom: 1)
let firstStory = FloorPlan(bedRooms: 1, utilityRooms: 0, bathRooms: 2, kitchen: 1, livingRoom: 1)
let secondStory = FloorPlan(bedRooms: 2, utilityRooms: 0, bathRooms: 1, kitchen: 0, livingRoom: 1)
let additionalStory = FloorPlan(bedRooms: 1, utilityRooms: 0, bathRooms: 1, kitchen: 1, livingRoom: 1)

print(ourHouse.addStory(floorPlan: basement))
print(ourHouse.addStory(floorPlan: firstStory))
print(ourHouse.addStory(floorPlan: secondStory))
print(ourHouse.addStory(floorPlan: additionalStory))
