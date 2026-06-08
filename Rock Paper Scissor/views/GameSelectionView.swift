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
                showResultModal = true
                gameViewModel.playerMove = .rock
            }.padding(.top, 24)
            
            GameChoiceButton(title: "Paper", imageName: "paper") {
                showResultModal = true
                gameViewModel.playerMove = .paper
            }.padding(.top, 24)
            
            GameChoiceButton(title: "Scissors", imageName: "scissor") {
                showResultModal = true
                gameViewModel.playerMove = .scissors
            }.padding(.top, 24)
        }
        .padding(16)
        .sheet(isPresented: $showResultModal) {
            // Pass both the result modal binding and the game selection binding to ResultView
            ResultView(showResultModal: $showResultModal, showGameSelection: $showGameSelection, gameViewModel: $gameViewModel)
        }
        Spacer()
    }
}

#Preview {
    // For preview, provide a constant binding
    GameSelectionView(showGameSelection: .constant(true))
}
