//
//  Inheritance.swift
//  TestProject-01
//
//  Created by Liu-Mac on 3/15/18.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

import Foundation

protocol ProtocolOne {
}

protocol ProtocolTwo {
}

protocol ProtocolThree: ProtocolOne, ProtocolTwo {
    // Add requirements here
}

protocol Person: FullName {
    var age: Int { get set }
}

struct Student: Person {
    
    var age: Int = 0
    var firstName: String = ""
    var lastName: String = ""
    
    var readOnly: String = ""
    
    static var typeProperty: String = ""
    
    func getFullName() -> String {
        return "\(firstName) \(lastName)"
    }
    
    mutating func changeName() {
        readOnly = "readOnly"
        firstName = "firstName"
    }
}
