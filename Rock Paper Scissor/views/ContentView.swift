//
//  ContentView.swift
//  Rock Paper Scissor
//
//  Created by Jeya Mayoo on 20/5/26.
//

import SwiftUI

struct ContentView: View {
    @State private var showGameSelection = false
    @State private var showStatsView = false
    @State private var statsViewModel = StatsViewModel() // ContentView now owns the StatsViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("logo").resizable().frame(width: 200, height: 200).aspectRatio(contentMode: .fit)

                
                Text("Rock - Paper Scissor")
                    .font(.custom("Silkscreen-Bold", size: 24))
                    .multilineTextAlignment(.center)
                    .padding(.top, 32)
                
                RetroButtonView(title: "new game") {
                    showGameSelection = true
                }
                .padding(.top, 32)
                
                RetroButtonView(title: "Stats") {
                    showStatsView = true
                }
                .padding(.top, 16)
            }
            .padding(16)
            .navigationDestination(isPresented: $showGameSelection) {
                // Pass the shared statsViewModel to GameSelectionView
                GameSelectionView(showGameSelection: $showGameSelection, statsViewModel: statsViewModel)
            }
            .navigationDestination(isPresented: $showStatsView) {
                // Pass the shared statsViewModel to StatsView
                StatsView(statsViewModel: statsViewModel)
            }
        }
    }
}

#Preview {
    ContentView()
}
