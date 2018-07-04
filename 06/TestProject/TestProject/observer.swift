//
//  observer.swift
//  TestProject
//
//  Created by qxxl007 on 2018/7/4.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

let NCNAME = "Notification Name"

import Foundation

class PostType {
    
    let nc = NotificationCenter.default
    
    func post() {
        
        nc.post(name: NSNotification.Name(rawValue: NCNAME), object: nil)
    }
}

class ObserverType {
    
    let nc = NotificationCenter.default
    
    deinit { nc.removeObserver(self) }
    
    init() {
        
        nc.addObserver(self, selector: #selector(receiveNotification(_:)), name: NSNotification.Name(rawValue: NCNAME), object: nil)
    }
    
    @objc func receiveNotification(_ notification: Notification) {
        
        print("Notification Received")
    }
}

protocol ZombieObserverProtocol {
    
    func turnLeft()
    func turnRight()
    func seesUs()
}

class MyObserver: ZombieObserverProtocol {
    
    func turnLeft() {
        print("Zombie turned left, we move right")
    }
    
    func turnRight() {
        print("Zombie turned right, we move left")
    }
    
    func seesUs() {
        print("Zombie sees us, RUN!!!!")
    }
}

struct Zombie {
    
    var observer: ZombieObserverProtocol
    
    func turnZombieLeft() {
        
        observer.turnLeft()
    }
    
    func turnZombieRight() {
        
        observer.turnRight()
    }
    
    func spotHuman() {
        
        observer.seesUs()
    }
}

protocol PropertyObserverProtocol {
    func propertyChanged(propertyName: String, newValue: Any)
}

class MyObserverType: PropertyObserverProtocol {
    
    func propertyChanged(propertyName: String, newValue: Any) {
        
        print("--- changed ---")
        print("Property Name: \(propertyName)")
        print("New Value: \(newValue)")
    }
}

struct PropertyObserver {
    
    var observer: PropertyObserverProtocol
    
    var property1: String {
        willSet {
            print("Property Changing")
        }
        didSet {
            observer.propertyChanged(
                propertyName: "property1",
                newValue: property1)
        }
    }
}
