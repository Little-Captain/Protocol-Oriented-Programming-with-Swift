//
//  Cooler.swift
//  TestProject-01
//
//  Created by Liu-Mac on 3/6/18.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

class Cooler {
    
    var temperature: Double
    var cansOfDrinks = [Drink]()
    var maxCans: Int
    
    init(temperature: Double, maxCans: Int) {
        self.temperature = temperature
        self.maxCans = maxCans
    }
    
    func addDrink(_ drink: Drink) -> Bool {
        if cansOfDrinks.count < maxCans {
            cansOfDrinks.append(drink)
            return true
        } else {
            return false
        }
    }
    
    func removeDrink() -> Drink? {
        if cansOfDrinks.count > 0 {
            return cansOfDrinks.removeFirst()
        } else {
            return nil
        }
    }
}
