//
//  Burger.swift
//  TestProject
//
//  Created by Liu-Mac on 4/26/18.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

import Foundation

protocol BurgerBuilderProtocol {
    var name: String { get }
    var patties: Int { get }
    var bacon: Bool { get }
    var cheese: Bool { get }
    var pickles: Bool { get }
    var ketchup: Bool { get }
    var mustard: Bool { get }
    var lettuce: Bool { get }
    var tomato: Bool { get }
}

struct HamBurgerBuilder: BurgerBuilderProtocol {
    let name: String = "Burger"
    let patties: Int = 1
    let bacon: Bool = false
    let cheese: Bool = false
    let pickles: Bool = true
    let ketchup: Bool = true
    let mustard: Bool = true
    let lettuce: Bool = false
    let tomato: Bool = false
}

struct CheeseBurgerBuilder: BurgerBuilderProtocol {
    let name: String = "CheeseBurger"
    let patties: Int = 1
    let bacon: Bool = false
    let cheese: Bool = true
    let pickles: Bool = true
    let ketchup: Bool = true
    let mustard: Bool = true
    let lettuce: Bool = false
    let tomato: Bool = false
}

struct BurgerOld {
    var name: String
    var patties: Int
    var bacon: Bool
    var cheese: Bool
    var pickles: Bool
    var ketchup: Bool
    var mustard: Bool
    var lettuce: Bool
    var tomato: Bool
}

struct Burger {
    
    var name: String
    var patties: Int
    var bacon: Bool
    var cheese: Bool
    var pickles: Bool
    var ketchup: Bool
    var mustard: Bool
    var lettuce: Bool
    var tomato: Bool
    
    init(builder: BurgerBuilderProtocol) {
        name = builder.name
        patties = builder.patties
        bacon = builder.bacon
        cheese = builder.cheese
        pickles = builder.pickles
        ketchup = builder.ketchup
        mustard = builder.mustard
        lettuce = builder.lettuce
        tomato = builder.tomato
    }
    
    func showBurger() {
        
        print("Name: \(name)")
        print("Patties: \(patties)")
        print("Bacon: \(bacon)")
        
        print("Cheese: \(cheese)")
        print("Pickles: \(pickles)")
        print("Ketchup: \(ketchup)")
        
        print("Mustard: \(mustard)")
        print("Lettuce: \(lettuce)")
        print("Tomato: \(tomato)")
    }
}

struct BurgerBuilder {
    
    var name: String = "Burger"
    var patties: Int = 1
    var bacon: Bool = false
    var cheese: Bool = false
    var pickles: Bool = true
    var ketchup: Bool = true
    var mustard: Bool = true
    var lettuce: Bool = false
    var tomato: Bool = false
    
    mutating func setPatties(_ choice: Int) { patties = choice }
    mutating func setBacon(_ choice: Bool) { bacon = choice }
    mutating func setCheese(_ choice: Bool) { cheese = choice }
    mutating func setPickles(_ choice: Bool) { pickles = choice }
    mutating func setKetchup(_ choice: Bool) { ketchup = choice }
    mutating func setMustard(_ choice: Bool) { mustard = choice }
    mutating func setLetture(_ choice: Bool) { lettuce = choice }
    mutating func setTomato(_ choice: Bool) { tomato = choice }
    
    func buildBurgerOld(_ name: String) -> BurgerOld {
        
        return BurgerOld(name: name,
                         patties: patties,
                         bacon: bacon,
                         cheese: cheese,
                         pickles: pickles,
                         ketchup: ketchup,
                         mustard: mustard,
                         lettuce: lettuce,
                         tomato: tomato)
    }
}

