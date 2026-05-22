//
//  SwiftUIView.swift
//  Rock Paper Scissor
//
//  Created by Jeya Mayoo on 23/5/26.
//

import SwiftUI

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
    RetroButtonView(title: "hello world") {
        print("clicked")
    }
}
