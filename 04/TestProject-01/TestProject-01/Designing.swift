//
//  Designing.swift
//  TestProject-01
//
//  Created by Liu-Mac on 3/17/18.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

import Foundation

enum TKDBeltColors: Int {
    case White, Yellow, Orage, Green, Blue, Purple, Red, FirstDegreeBlack, SecondDegreeBlack, ThirdDegreeBlack, ForthDegreeBlack
}

enum TKDColorRank: Int {
    case NoRank, Probationary, Decided, Intermediate, Senior
}

typealias BoardBreak = (name: String, required: Bool)

class TKDTestingRequirements {
    var color = TKDBeltColors.White
    var rank = TKDColorRank.NoRank
    var formName = ""
    var focusPadDrills = [String]()
    var focusPadMissesAllowed = 2
    var sparringRoundsRequired = 0
    var boardBreaksRequired = 0
    
    var boardBreaks: [BoardBreak]?
    var oneStepsNumbers: [Int]?
}

class WhiteBelt: TKDTestingRequirements {
    override init() {
        super.init()
        color = .White
        rank = .NoRank
        formName = "Chon-Ji"
        oneStepsNumbers = [1, 2, 3]
        focusPadDrills = ["Reverse Punch", "Number 1 Front Kick"]
        focusPadMissesAllowed = 2
        boardBreaksRequired = 0
        sparringRoundsRequired = 0
    }
}

class GreenBeltSenior: TKDTestingRequirements {
    override init() {
        super.init()
        color = .Green
        rank = .NoRank
        formName = "Do-San"
        focusPadDrills = ["Back Fist", "Number 2 Crescent"]
        focusPadMissesAllowed = 2
        boardBreaks = [("Hammer Fist", false), ("Front Kick", false)]
        boardBreaksRequired = 1
        sparringRoundsRequired = 2
        oneStepsNumbers = nil
    }
}

protocol TKDRankProtocol {
    var color: TKDBeltColors { get }
    var rank: TKDColorRank { get }
}

protocol BoardBreakProtocol {
    var boardBreaks: [BoardBreak] { get }
    var boardBreaksRequired: Int { get }
}

protocol FormProtocol {
    var formName: String { get }
}

protocol FocusPadProtocol {
    var focusPadDrills: [String] { get }
    var focusPadMissesAllowed: Int { get }
}

protocol OneStepsProtocol {
    var oneStepsNumbers: [Int] { get }
}

protocol SparringProtocol {
    var sparringRoundRequired: Int { get }
}

struct WhiteBelt1: TKDRankProtocol, FormProtocol, OneStepsProtocol, FocusPadProtocol {
    let color: TKDBeltColors = .White
    let rank: TKDColorRank = .NoRank
    let formName: String = "Chon-Ji"
    let oneStepsNumbers: [Int] = [1, 2, 3]
    let focusPadDrills: [String] = ["Reverse Punch", "Number 1 Front Kick"]
    let focusPadMissesAllowed: Int = 2
}

struct GreenBeltSenior1: TKDRankProtocol, FormProtocol, BoardBreakProtocol, FocusPadProtocol, SparringProtocol {
    let color: TKDBeltColors = .Green
    let rank: TKDColorRank = .NoRank
    let formName: String = "Do-San"
    let focusPadDrills: [String] = ["Back Fist", "Number 2 Crescent"]
    let focusPadMissesAllowed: Int = 2
    let boardBreaks: [BoardBreak] = [("Hammer Fist", false), ("Front Kick", false)]
    let boardBreaksRequired: Int = 1
    let sparringRoundRequired: Int = 2
}
