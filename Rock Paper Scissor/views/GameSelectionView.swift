//
//  GameSelectionView.swift
//  Rock Paper Scissor
//
//  Created by Jeya Mayoo on 23/5/26.
//

import SwiftUI

struct GameSelectionView: View {
    // This binding controls GameSelectionView's presentation from ContentView
    @Binding var showGameSelection: Bool
    @State private var showResultModal = false
    // Remove the @State for statsViewModel here, as it's now passed in
    var statsViewModel: StatsViewModel // Now a regular var, passed from ContentView
    @State private var gameViewModel: GameViewModel
    
    init(showGameSelection: Binding<Bool>, statsViewModel: StatsViewModel) {
            _showGameSelection = showGameSelection // Initialize the binding
            self.statsViewModel = statsViewModel // Assign the passed-in statsViewModel
            // Initialize the GameViewModel with the *shared* StatsViewModel
            _gameViewModel = State(initialValue: GameViewModel(statsViewModel: statsViewModel))
        }
    
    var body: some View {
        VStack {
            Text("MAKE YOUR SELECTION")
                .font(.custom("Silkscreen-Bold", size: 30))
                .multilineTextAlignment(.center)
                .padding(.top, 40)
            
            GameChoiceButton(title: "Rock", imageName: "rock") {
                gameViewModel.playerMove = .rock // Set player's move
                gameViewModel.playRound(userSelection: gameViewModel.playerMove!) // Play the round immediately
                showResultModal = true // Then show the modal
            }.padding(.top, 24)
            
            GameChoiceButton(title: "Paper", imageName: "paper") {
                gameViewModel.playerMove = .paper
                gameViewModel.playRound(userSelection: gameViewModel.playerMove!)
                showResultModal = true
            }.padding(.top, 24)
            
            GameChoiceButton(title: "Scissors", imageName: "scissor") {
                gameViewModel.playerMove = .scissors
                gameViewModel.playRound(userSelection: gameViewModel.playerMove!)
                showResultModal = true
            }.padding(.top, 24)
        }
        .padding(16)
        .sheet(isPresented: $showResultModal) {
            // Now, only ResultView is in the sheet's content, which is a View.
            // The game logic has already been executed.
            ResultView(showResultModal: $showResultModal, showGameSelection: $showGameSelection, gameViewModel: $gameViewModel)
        }
        Spacer()
    }
}

#Preview {
    // For preview, provide a constant binding and an instance of StatsViewModel
    GameSelectionView(showGameSelection: .constant(true), statsViewModel: StatsViewModel())
}
