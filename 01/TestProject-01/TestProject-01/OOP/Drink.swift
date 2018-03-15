//
//  Drink.swift
//  TestProject-01
//
//  Created by Liu-Mac on 3/6/18.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

enum DrinkSize {
    case Can12
    case Can16
    case Can24
    case Can32
}

class Drink {
    
    var volume: Double
    var caffeine: Double
    var temperature: Double
    var drinkSize: DrinkSize
    var description: String
    
    init(volume: Double, caffeine: Double, temperature: Double, drinkSize: DrinkSize) {
        self.volume = volume
        self.caffeine = caffeine
        self.temperature = temperature
        self.description = "Drink base class"
        self.drinkSize = drinkSize
    }
    
    func drinking(_ amount: Double) {
        volume -= amount
    }
    
    func temperatureChange(_ change: Double) {
        temperature += change
    }
}
