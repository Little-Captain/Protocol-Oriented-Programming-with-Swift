//
//  command.swift
//  TestProject
//
//  Created by qxxl007 on 2018/5/17.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

import Foundation

protocol Command {
    
    func execute()
}

struct RockerSwitchLightOnCommand: Command {
    func execute() {
        print("Rocker Switch: Turning Light On")
    }
}

struct RockerSwitchLightOffCommand: Command {
    func execute() {
        print("Rocker Switch: Turning Light Off")
    }
}

struct PullSwitchLightOnCommand: Command {
    func execute() {
        print("Pull Switch: Turning Light On")
    }
}

struct PullSwitchLightOffCommand: Command {
    func execute() {
        print("Pull Switch: Turning Light Off")
    }
}

class Light {
    
    var lightOnCommand: Command
    var lightOffCommand: Command
    
    init(lightOnCommand: Command, lightOffCommand: Command) {
        
        self.lightOnCommand = lightOnCommand
        self.lightOffCommand = lightOffCommand
    }
    
    func turnOnLight() {
        
        self.lightOnCommand.execute()
    }
    
    func turnOffLight() {
        
        self.lightOffCommand.execute()
    }
}
