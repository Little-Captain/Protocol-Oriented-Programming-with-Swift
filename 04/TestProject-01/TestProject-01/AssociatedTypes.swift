//
//  AssociatedTypes.swift
//  TestProject-01
//
//  Created by Liu-Mac on 3/17/18.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

import Foundation

protocol QueueProtocol {
    associatedtype QueueType
    mutating func addItem(_ item: QueueType)
    mutating func getItem() -> QueueType?
    func count() -> Int
}

struct IntQueue: QueueProtocol {
    
    typealias QueueType = Int
    
    var items = [Int]()
    
    mutating func addItem(_ item: Int) {
        items.append(item)
    }
    
    mutating func getItem() -> Int? {
        if items.count > 0 {
            return items.remove(at: 0)
        } else {
            return nil
        }
    }
    
    func count() -> Int {
        return items.count
    }
}

class GenericQueue<T>: QueueProtocol {
    
    typealias QueueType = T
    
    var items = [T]()
    
    func addItem(_ item: T) {
        items.append(item)
    }
    
    func getItem() -> T? {
        if items.count > 0 {
            return items.remove(at: 0)
        } else {
            return nil
        }
    }
    
    func count() -> Int {
        return items.count
    }
}
