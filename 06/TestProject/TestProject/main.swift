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

/// Command
print("--------- Command ---------")
let on = PullSwitchLightOnCommand()
let off = PullSwitchLightOffCommand()
let light = Light(lightOnCommand: on, lightOffCommand: off)

light.turnOnLight()
light.turnOffLight()

light.lightOnCommand = RockerSwitchLightOnCommand()
light.turnOnLight()

/// Strategy
print("--------- Strategy ---------")
var filePaths = ["file1.txt", "file2.txt"]
var zip = ZipCompressionStrategy()
var rar = RarCompressionStrategy()

var compress = CompressContent(strategy: zip)
compress.compressFiles(filePaths)

compress.strategy = rar
compress.compressFiles(filePaths)

/// Observer 1
print("--------- Observer 1 ---------")
var postType = PostType()
var observerType = ObserverType()
postType.post()

/// Observer 2
print("--------- Observer 2 ---------")
var observer = MyObserver()
var zombie = Zombie(observer: observer)

zombie.turnZombieLeft()
zombie.spotHuman()

/// Observer 3
print("--------- Observer 3 ---------")
var myObserver = MyObserverType()
var p = PropertyObserver(observer: myObserver, property1: "Initial String")
p.property1 = "My String"
