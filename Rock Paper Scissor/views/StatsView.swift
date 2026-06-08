//
//  StatsView.swift
//  Rock Paper Scissor
//
//  Created by Jeya Mayoo on 9/6/26.
//

import SwiftUI

struct StatsView: View {
    // No longer @State, it's passed in from ContentView and is @Observable
    var statsViewModel: StatsViewModel
    
    var body: some View {
        Text("Stats").font(.custom("Silkscreen-Bold", size: 30))
            .padding(.top, 88)
        
        HStack {
            VStack {
                Text("You").font(.custom("Silkscreen-Bold", size: 24))
                Text(String(statsViewModel.playerWins)).font(.custom("Silkscreen-Bold", size: 24))
                
            }.padding(.leading, 78)
            
            Spacer()
            
            VStack {
                Text("|").font(.custom("Silkscreen", size: 24))
            }
            .padding(.bottom, 40)
            
            Spacer()
            
            VStack {
                Text("BOT").font(.custom("Silkscreen-Bold", size: 24))
                Text(String(statsViewModel.botWins)).font(.custom("Silkscreen-Bold", size: 24))
            }.padding(.trailing, 78)
        }
        .padding(.top, 32)
        Spacer()
    }
}

#Preview {
    // For preview, provide a new StatsViewModel instance
    StatsView(statsViewModel: StatsViewModel())
}
