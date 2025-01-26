//
//  StartButtonView.swift
//  Fructus
//
//  Created by Bhavin Bhadani on 26/01/25.
//

import SwiftUI

struct StartButtonView: View {
    var body: some View {
        Button {
            
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule()
                    .stroke(Color.white, lineWidth: 1.25)
            )
        }
        .accentColor(.white)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    StartButtonView()
        .preferredColorScheme(.dark)
}
