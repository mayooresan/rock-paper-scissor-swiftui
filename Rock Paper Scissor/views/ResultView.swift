//
//  ResultView.swift
//  Rock Paper Scissor
//
//  Created by Jeya Mayoo on 7/6/26.
//

import SwiftUI

struct ResultView: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        Text("You won").font(.custom("Silkscreen-Bold", size: 30))
            .padding(.top, 88)
        
        HStack {
            VStack {
                Text("You").font(.custom("Silkscreen-Bold", size: 24))
                Image("rock")
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
                Image("scissor")
                    .resizable()
                    .frame(width: 60, height: 70)
            }.padding(.trailing, 78)
        }
        .padding(.top, 84)
        
        VStack {
            RetroButtonView(title: "play gain") {
                dismiss()
            }
            .padding(.top, 32)
        }
        
        RetroButtonView(title: "back to home") {
            dismiss()
        }
        .padding(.top, 16)
        
        Spacer()
    }
}

#Preview {
    ResultView()
}
