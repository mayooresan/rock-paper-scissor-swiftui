//
//  StatsViewModel.swift
//  Rock Paper Scissor
//
//  Created by Jeya Mayoo on 9/6/26.
//

import Foundation

@Observable
class StatsViewModel {
    var playerWins: Int = 0
        var botWins: Int = 0
        
        private let playerWinsKey = "playerWinsKey"
        private let botWinsKey = "botWinsKey"
        
        init() {
            self.playerWins = UserDefaults.standard.integer(forKey: playerWinsKey)
            self.botWins = UserDefaults.standard.integer(forKey: botWinsKey)
        }
        
        func recordWin() {
            playerWins += 1
            UserDefaults.standard.set(playerWins, forKey: playerWinsKey)
        }
        
        func recordLoss() {
            botWins += 1
            UserDefaults.standard.set(botWins, forKey: botWinsKey)
        }
        
        func resetScores() {
            playerWins = 0
            botWins = 0
            UserDefaults.standard.set(0, forKey: playerWinsKey)
            UserDefaults.standard.set(0, forKey: botWinsKey)
        }
}
