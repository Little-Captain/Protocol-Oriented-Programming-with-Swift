//
//  Delegation.swift
//  TestProject-01
//
//  Created by Liu-Mac on 3/17/18.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

import Foundation

protocol DisplayNameDelegate {
    func displayName(name: String)
}

struct Person1 {
    var displayNameDelegate: DisplayNameDelegate
    var firstName = "" {
        didSet {
            displayNameDelegate.displayName(name: getFullName())
        }
    }
    var lastName = "" {
        didSet {
            displayNameDelegate.displayName(name: getFullName())
        }
    }
    
    init(displayNameDelegate: DisplayNameDelegate) {
        self.displayNameDelegate = displayNameDelegate
    }
    
    func getFullName() -> String {
        return "\(firstName) \(lastName)"
    }
}

struct MyDisplayNameDelegate: DisplayNameDelegate {
    func displayName(name: String) {
        print("Name: \(name)")
    }
}
