//
//  singleton.swift
//  TestProject
//
//  Created by Liu-Mac on 4/26/18.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

import Foundation

let MySingletonInstance = MySingleton.sharedInstance

class MySingleton {
    
    static let sharedInstance = MySingleton()
    
    var number = 0
    
    private init() {}
}
