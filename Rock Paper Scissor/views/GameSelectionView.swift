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
    @State var gameViewModel: GameViewModel = GameViewModel()
    
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
    // For preview, provide a constant binding
    GameSelectionView(showGameSelection: .constant(true))
}

