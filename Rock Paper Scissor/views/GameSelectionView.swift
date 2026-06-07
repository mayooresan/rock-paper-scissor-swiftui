//
//  GameSelectionView.swift
//  Rock Paper Scissor
//
//  Created by Jeya Mayoo on 23/5/26.
//

import SwiftUI

struct GameSelectionView: View {
    var body: some View {
        VStack {
            Text("MAKE YOUR SELECTION")
                .font(.custom("Silkscreen-Bold", size: 30))
                .multilineTextAlignment(.center)
                .padding(.top, 40)
            
            GameChoiceButton(title: "Rock", imageName: "rock") {
                
            }.padding(.top, 24)
            
            GameChoiceButton(title: "Paper", imageName: "paper") {
                
            }.padding(.top, 24)
            
            GameChoiceButton(title: "Scissor", imageName: "scissor") {
                
            }.padding(.top, 24)
        }.padding(16)
        Spacer()
    }
}

#Preview {
    GameSelectionView()
}
