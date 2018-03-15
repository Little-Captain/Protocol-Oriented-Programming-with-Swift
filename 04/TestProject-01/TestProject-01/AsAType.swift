//
//  AsAType.swift
//  TestProject-01
//
//  Created by Liu-Mac on 3/15/18.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

import Foundation

protocol PersonProtocol {
    
    var firstName: String { get set }
    var lastName: String { get set }
    var birthDate: Date { get set }
    var profession: String { get }
    
    init(firstName: String, lastName: String, birthDate: Date)
}

func updatePerson(person: PersonProtocol) -> PersonProtocol {
    var newPerson: PersonProtocol
    // Code to update person goes here
    newPerson = person
    return newPerson
}

var personArray = [PersonProtocol]()
var personDict = [String: PersonProtocol]()

//var test = PersonProtocol(firstName: "John", lastName: "Hoffman", birthDate: Date())

