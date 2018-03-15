//
//  main.swift
//  TestProject-01
//
//  Created by Liu-Mac on 3/6/18.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

import Foundation

var cooler = Cooler(temperature: 38.0, maxCans: 24)

for _ in 0...5 {
    let can = Jolt(temperature: 45.1)
    let _ = cooler.addDrink(can)
}

//let jolt = cooler.removeDrink()
//print(cooler.cansOfDrinks.count)
//jolt?.drinking(5)
//print("Jolt Left in can: \(jolt?.volume)")

for _ in 0...5 {
    let can = CaffeineFreeDietCoke(volume: 15.5, temperature: 45, drinkSize: DrinkSize.Can16)
    let _ = cooler.addDrink(can)
}

var foundCan = false
var wifeDrink: Drink?

while !foundCan {
    if let can = cooler.removeDrink() {
        if can is CaffeineFreeDietCoke {
            foundCan = true
            wifeDrink = can
        } else {
            _ = cooler.addDrink(can)
        }
    }
}

if let drink = wifeDrink {
    print("Got: " + drink.description)
}

var jolts = [Drink]()

var myJolt = Jolt(temperature: 48)
for _ in 0...5 {
    jolts.append(myJolt)
}

jolts[0].drinking(10)

for (index, can) in jolts.enumerated() {
    print("Can \(index) amount Left: \(can.volume)")
}
