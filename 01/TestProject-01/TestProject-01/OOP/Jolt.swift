//
//  Jolt.swift
//  TestProject-01
//
//  Created by Liu-Mac on 3/6/18.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

class Jolt: Drink {
    
    init(temperature: Double) {
        super.init(volume: 23.5, caffeine: 280, temperature: temperature, drinkSize: .Can24)
        self.description = "Jolt energy drink"
    }
}
