//
//  GameViewModel.swift
//  Rock Paper Scissor
//
//  Created by Jeya Mayoo on 9/6/26.
//

import Foundation

@Observable
class GameViewModel {
    var playerMove: Game?
    var botMove: Game?
    var gameResult: GameResult?
    
    func playRound(userSelection: Game) {
        playerMove = userSelection
        botMove = Game.allCases.randomElement()
    }
    
    
}
