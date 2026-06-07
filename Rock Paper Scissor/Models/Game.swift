//
//  Game.swift
//  Rock Paper Scissor
//
//  Created by Jeya Mayoo on 7/6/26.
//

import Foundation

enum Game: String, CaseIterable {
    case rock = "rock"
    case paper = "paper"
    case scissors = "scissors"
    
    var assetName: String {
        switch self {
            case .rock: return "rock"
            case .paper: return "paper"
            case .scissors: return "scissor"
        }
    }
}

enum GameResult: String {
    case win = "YOU WON"
    case lose = "YOU LOST"
    case tie = "TIE"
}
