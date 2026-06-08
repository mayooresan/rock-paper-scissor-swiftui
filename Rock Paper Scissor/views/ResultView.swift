//
//  ResultView.swift
//  Rock Paper Scissor
//
//  Created by Jeya Mayoo on 7/6/26.
//

import SwiftUI

struct ResultView: View {
    // This is for dismissing ResultView itself (the sheet)
    @Binding var showResultModal: Bool
    // This is for dismissing GameSelectionView and going back to ContentView
    @Binding var showGameSelection: Bool
    @Binding var gameViewModel: GameViewModel

    var body: some View {
        Text(gameViewModel.gameResult?.rawValue ?? "no value").font(.custom("Silkscreen-Bold", size: 30))
            .padding(.top, 88)
        
        Text(String(gameViewModel.stats.playerWins))
        
        HStack {
            VStack {
                Text("You").font(.custom("Silkscreen-Bold", size: 24))
                Image(gameViewModel.playerMove?.assetName ?? "paper")
                    .resizable()
                    .frame(width: 60, height: 70)
            }.padding(.leading, 78)
            
            Spacer()
            
            VStack {
                Text("|").font(.custom("Silkscreen", size: 24))
            }
            .frame(width: 40)
            .padding(.bottom, 88)
            
            Spacer()
            
            VStack {
                Text("BOT").font(.custom("Silkscreen-Bold", size: 24))
                Image(gameViewModel.botMove?.assetName ?? "scissor")
                    .resizable()
                    .frame(width: 60, height: 70)
            }.padding(.trailing, 78)
        }
        .padding(.top, 84)
        
        VStack {
            RetroButtonView(title: "play again") {
                // Dismiss only the ResultView sheet
                showResultModal = false
            }
            .padding(.top, 32)
        }
        
        RetroButtonView(title: "back to home") {
            // Dismiss the ResultView sheet
            showResultModal = false
            // Pop GameSelectionView from the NavigationStack, returning to ContentView
            showGameSelection = false
        }
        .padding(.top, 16)
        
        Spacer()
    }
}

#Preview {
    // For preview, provide constant bindings
    ResultView(showResultModal: .constant(true), showGameSelection: .constant(true), gameViewModel: .constant(GameViewModel(statsViewModel: StatsViewModel())))
}
