//
//  main.swift
//  TestProject-01
//
//  Created by Liu-Mac on 3/9/18.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

import Foundation

var myDrink = Drink(volume: 23.5, caffeine: 280, temperature: 38.2, drinkSize: .Can24, description: "Drink Structure")

var myError: NSError?
if myDrink.drinking(amount: 50.0, error: &myError) {
    print("Had a drink")
} else {
    print("Error: \(myError!.userInfo)")
}

var results = myDrink.temperatureChange(change: -5)
switch results {
case .TooHot(let temperature):
    print("Drink too hot \(temperature)")
case .TooCold(let temperature):
    print("Drink too cold \(temperature)")
case .JustRight(let temperature):
    print("Drink just right \(temperature)")
}

do {
    try myDrink.drinking(amount: 50.0)
} catch DrinkErrors.InsufficentVolume {
    print("Error taking drink")
}

do {
    try myDrink.temperatureChange2(change: 20.0)
} catch DrinkErrors.TooHot(let temp) {
    print("Drink too hot: \(temp) degrees")
} catch DrinkErrors.TooCold(let temp) {
    print("Drink too cold: \(temp) degrees")
}

func myFunc() throws {
    try myDrink.temperatureChange2(change: 20.0)
}

do {
    try myFunc()
} catch DrinkErrors.TooHot(let temp) {
    print("Drink too hot: \(temp) degrees")
} catch DrinkErrors.TooCold(let temp) {
    print("Drink too cold: \(temp) degrees")
}

func deferFunction() {
    
    print("Function started")
    var str: String?
    
    defer {
        print("In defer block")
        if let s = str {
            print("str is \(s)")
        }
    }
    
    str = "Jon"
    print("Function finished")
}

deferFunction()
