//
//  proxy.swift
//  TestProject
//
//  Created by qxxl007 on 2018/5/14.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

import Foundation

protocol FloorPlanProtocol {
    var bedRooms: Int { get set }
    var utilityRooms: Int { get set }
    var bathRooms: Int { get set }
    var kitchen: Int { get set }
    var livingRoom: Int { get set }
}

struct FloorPlan: FloorPlanProtocol {
    
    var bedRooms: Int = 0
    var utilityRooms: Int = 0
    var bathRooms: Int = 0
    var kitchen: Int = 0
    var livingRoom: Int = 0
}

class House {
    
    var stories = [FloorPlanProtocol]()
    
    func addStory(floorPlan: FloorPlanProtocol) {
        
        stories.append(floorPlan)
    }
}

class HouseProxy {
    
    var house = House()
    
    func addStory(floorPlan: FloorPlanProtocol) -> Bool {
        
        if house.stories.count < 3 {
            house.addStory(floorPlan: floorPlan)
            return true
        } else {
            return false
        }
    }
}
