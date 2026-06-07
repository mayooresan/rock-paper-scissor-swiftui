//
//  GameChoiceButton.swift
//  Rock Paper Scissor
//
//  Created by Jeya Mayoo on 23/5/26.
//

import SwiftUI

import SwiftUI

struct GameChoiceButton: View {
    let title: String
    let imageName: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack(spacing: 20) {
                // Dynamic image passed via parameter
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                
                // Dynamic text passed via parameter
                Text(title.uppercased())
                    .font(.custom("Silkscreen-Regular", size: 24))
                    .foregroundColor(.black)
            }
            .padding(.horizontal, 30)
            .padding(.vertical, 15)
            .frame(width: 280, height: 110)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 1.5)
                    .background(RoundedRectangle(cornerRadius: 20).fill(Color.white))
            )
        }
    }
}

#Preview {
    GameChoiceButton(title: "Logo", imageName: "logo") {
        print("clicked logo")
    }
}
