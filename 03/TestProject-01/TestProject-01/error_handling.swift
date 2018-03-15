//
//  error_handling.swift
//  TestProject-01
//
//  Created by Liu-Mac on 3/9/18.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

import Foundation

enum DrinkSize {
    case Can12
    case Can16
    case Can24
    case Can32
}

enum DrinkTemperature {
    case TooHot(temperature: Double)
    case TooCold(temperature: Double)
    case JustRight(temperature: Double)
}

struct ErrorConstants {
    static let ERROR_DOMAIN = "com.masteringswift.nserrorexample"
    static let ERROR_INSUFFICENT_VOLUME = 200
    static let ERROR_TOO_HOT = 201
    static let ERROR_TOO_COLD = 202
}

enum MyError: Error {
    case Minor
    case Bad
    case Terrible(description: String)
}

enum DrinkErrors: Error {
    case InsufficentVolume
    case TooHot(temp: Double)
    case TooCold(temp: Double)
}

struct Drink {
    var volume: Double
    var caffeine: Double
    var temperature: Double
    var drinkSize: DrinkSize
    var description: String
    
    mutating func drinking(amount: Double) throws {
        guard amount < volume else {
            throw DrinkErrors.InsufficentVolume
        }
        
        volume -= amount
    }
    
    func myFunc(parm: String) throws -> String {
        return ""
    }
    
    mutating func drinking(amount: Double, error: NSErrorPointer) -> Bool {
        guard amount <= volume else {
            error?.pointee = NSError(domain: ErrorConstants.ERROR_DOMAIN, code: ErrorConstants.ERROR_INSUFFICENT_VOLUME, userInfo: ["Error reason": "Not enough volume for drink"])
            return false
        }
        volume -= amount
        return true
    }
    
    mutating func temperatureChange2(change: Double) throws {
        temperature += change
        guard temperature >= 35 else {
            throw DrinkErrors.TooCold(temp: temperature)
        }
        guard temperature <= 45 else {
            throw DrinkErrors.TooHot(temp: temperature)
        }
    }
    
    mutating func temperatureChange(change: Double) -> DrinkTemperature {
        temperature += change
        guard temperature >= 35 else {
            return .TooCold(temperature: temperature)
        }
        guard temperature <= 45 else {
            return .TooHot(temperature: temperature)
        }
        return .JustRight(temperature: temperature)
    }
    
    mutating func temperatureChange(change: Double, error: NSErrorPointer) -> Bool {
        temperature += change
        guard temperature >= 35 else {
            error?.pointee = NSError(domain: ErrorConstants.ERROR_DOMAIN, code: ErrorConstants.ERROR_TOO_COLD, userInfo: ["Error reason": "Drink too cold"])
            return false
        }
        guard temperature <= 45 else {
            error?.pointee = NSError(domain: ErrorConstants.ERROR_DOMAIN, code: ErrorConstants.ERROR_TOO_HOT, userInfo: ["Error reason": "Drink too warm"])
            return false
        }
        return true
    }
}
