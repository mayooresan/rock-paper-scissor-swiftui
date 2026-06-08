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
    var stats: StatsViewModel
    
    func playRound(userSelection: Game) {
        playerMove = userSelection
        botMove = Game.allCases.randomElement()
        determineWinner()
    }
    
    init(statsViewModel: StatsViewModel) {
        self.stats = statsViewModel
    }
    
    private func determineWinner() {
            guard let pMove = playerMove, let bMove = botMove else { return }
            
            if pMove == bMove {
                gameResult = .tie
            } else if (pMove == .rock && bMove == .scissors) ||
                      (pMove == .paper && bMove == .rock) ||
                      (pMove == .scissors && bMove == .paper) {
                gameResult = .win
                stats.recordWin()
            } else {
                gameResult = .lose
                stats.recordLoss()
            }
        }
}
