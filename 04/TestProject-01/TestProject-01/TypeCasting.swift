//
//  TypeCasting.swift
//  TestProject-01
//
//  Created by Liu-Mac on 3/17/18.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

import Foundation

struct SwiftProgrammer: PersonProtocol {
    var firstName: String
    
    var lastName: String
    
    var birthDate: Date
    
    var profession: String
    
    init(firstName: String, lastName: String, birthDate: Date) {
        self.firstName = firstName
        self.lastName = lastName
        self.birthDate = birthDate
        self.profession = "SwiftProgrammer"
    }
}

struct FootballPlayer: PersonProtocol {
    var firstName: String
    
    var lastName: String
    
    var birthDate: Date
    
    var profession: String
    
    init(firstName: String, lastName: String, birthDate: Date) {
        self.firstName = firstName
        self.lastName = lastName
        self.birthDate = birthDate
        self.profession = "FootballPlayer"
    }
}


func testPerson() {
    var person: PersonProtocol = SwiftProgrammer(firstName: "", lastName: "", birthDate: Date())
    if person is SwiftProgrammer {
        print("\(person.firstName) is a Swift Programmer")
    }
    let people: [PersonProtocol] = [person]
    for person in people {
        switch person {
        case is SwiftProgrammer:
            print("\(person.firstName) is a Swift Programmer")
        case is FootballPlayer:
            print("\(person.firstName) is a Football Player")
        default:
            print("\(person.firstName) is an unknown type")
        }
    }
    
    for person in people where person is SwiftProgrammer {
        print("\(person.firstName) is a Swift Programmer")
    }
    
    if let p = person as? SwiftProgrammer {
        print("\(p.firstName) is a Swift Programmer")
    }
    
    for person in people where person is SwiftProgrammer {
        let p = person as! SwiftProgrammer
        print("\(p.firstName) is a Swift Programmer")
    }
}
