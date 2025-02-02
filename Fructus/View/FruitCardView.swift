//
//  FruitCardView.swift
//  Fructus
//
//  Created by Bhavin Bhadani on 26/01/25.
//

import SwiftUI

struct FruitCardView: View {
    var fruit: Fruit
    @State private var isAnimating = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1 : 0.6)
                
                Text(fruit.title)
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.15), radius: 2, x: 2, y: 2)
                
                Text(fruit.headline)
                  .foregroundColor(Color.white)
                  .multilineTextAlignment(.center)
                  .padding(.horizontal, 16)
                  .frame(maxWidth: 480)
                
                StartButtonView()
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
        )
        .clipShape(.rect(cornerRadius: 20))
        .padding(.horizontal, 20)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
    }
}

#Preview(traits: .fixedLayout(width: 320, height: 640)) {
    FruitCardView(fruit: fruitsData[0])
}
