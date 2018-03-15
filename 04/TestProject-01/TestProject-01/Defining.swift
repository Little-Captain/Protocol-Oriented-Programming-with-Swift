//
//  Defining.swift
//  TestProject-01
//
//  Created by Liu-Mac on 3/15/18.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

import Foundation

protocol MyProtocol {
    // protocol definition here
}

protocol AnotherProtocol {
}

protocol ThirdProtocol {
}

struct MyStruct: MyProtocol, AnotherProtocol, ThirdProtocol {
    // structure implementation here
}

protocol FullName {
    
    /// 可读写属性
    var firstName: String { get set }
    var lastName: String { get set }
    /// 只读属性
    var readOnly: String { get }
    /// 类型属性
    static var typeProperty: String { get }
    
    func getFullName() -> String
    /// 可修改值类型的值, 但是在引用类型中不用使用这个 mutating 关键字
    /// mutating 关键字只用在值类型中
    mutating func changeName()
}

@objc protocol Phone {
    var phoneNumber: String { get set }
    @objc optional var emailAddress: String { get set }
    
    func dialNumber()
    @objc optional func getEmail()
}


