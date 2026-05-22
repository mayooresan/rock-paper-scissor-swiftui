//
//  ContentView.swift
//  Rock Paper Scissor
//
//  Created by Jeya Mayoo on 20/5/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("logo").resizable().frame(width: 200, height: 200).aspectRatio(contentMode: .fit)
            Text("Rock - Paper Scissor")
                .font(.custom("Silkscreen-Bold", size: 24))
                .multilineTextAlignment(.center)
            
            RetroButtonView(title: "new game") {
                
            }
            
            RetroButtonView(title: "bot vs bot") {
                
            }
        }
        .padding(16)
    }
}

struct RetroButtonView: View {
    let title: String
    let action: () -> Void
    var body: some View {
        Button(action: action) {
                    Text(title)
                        .font(.custom("Silkscreen-Regular", size: 20))
                        .foregroundColor(.black)
                        .padding(.horizontal, 40)
                        .padding(.vertical, 15)
                        .frame(width: 250, height: 50)
                        .background(
                            Capsule()
                                .stroke(Color.black, lineWidth: 1)
                                .background(Capsule().fill(Color.white)))
        }
    }
}

#Preview {
    ContentView()
}
