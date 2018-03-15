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

protocol Drink {
    var volume: Double { get set }
    var caffeine: Double { get set }
    var temperature: Double { get set }
    var drinkSize: DrinkSize { get set }
    var description: String { get set }
}

extension Drink {
    
    mutating func drinking(_ amount: Double) {
        volume -= amount
    }
    
    mutating func temperatureChange(_ change: Double) {
        temperature += change
    }
}
