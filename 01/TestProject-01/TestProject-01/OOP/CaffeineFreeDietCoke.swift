//
//  CaffeineFreeDietCoke.swift
//  TestProject-01
//
//  Created by Liu-Mac on 3/6/18.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

class CaffeineFreeDietCoke: Drink {
    
    init(volume: Double, temperature: Double, drinkSize: DrinkSize) {
        super.init(volume: volume, caffeine: 0, temperature: temperature, drinkSize: drinkSize)
        self.description = "Caffiene Free Diet Coke"
    }
}
