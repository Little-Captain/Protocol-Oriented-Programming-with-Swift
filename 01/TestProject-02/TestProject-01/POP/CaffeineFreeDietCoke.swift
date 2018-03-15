//
//  CaffeineFreeDietCoke.swift
//  TestProject-01
//
//  Created by Liu-Mac on 3/6/18.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

struct CaffeineFreeDietCoke: Drink {
    
    var volume: Double
    var caffeine: Double
    var temperature: Double
    var drinkSize: DrinkSize
    var description: String    
    
    init(volume: Double, temperature: Double, drinkSize: DrinkSize) {
        self.volume = volume
        self.caffeine = 0
        self.temperature = temperature
        self.description = "Caffiene Free Diet Coke"
        self.drinkSize = drinkSize
    }
}
