//
//  FruitCardView.swift
//  Fructus
//
//  Created by Bhavin Bhadani on 26/01/25.
//

import SwiftUI

struct FruitCardView: View {
    
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Image(.blueberry)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                
                Text("Blueberry")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.15), radius: 2, x: 2, y: 2)
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(
            LinearGradient(gradient: Gradient(colors: [.colorBlueberryLight, .colorBlueberryDark]), startPoint: .top, endPoint: .bottom)
        )
        .clipShape(.rect(cornerRadius: 20))
    }
}

#Preview(traits: .fixedLayout(width: 320, height: 640)) {
    FruitCardView()
}
