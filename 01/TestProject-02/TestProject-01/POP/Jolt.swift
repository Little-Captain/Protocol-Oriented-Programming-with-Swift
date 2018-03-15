//
//  Jolt.swift
//  TestProject-01
//
//  Created by Liu-Mac on 3/6/18.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

struct Jolt: Drink {
    
    var volume: Double
    var caffeine: Double
    var temperature: Double
    var drinkSize: DrinkSize
    var description: String    
    
    init(temperature: Double) {
        self.volume = 23.5
        self.caffeine = 280
        self.temperature = temperature
        self.description = "Jolt energy drink"
        self.drinkSize = .Can24
    }
}
