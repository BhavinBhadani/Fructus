//
//  OnboardingView.swift
//  Fructus
//
//  Created by Bhavin Bhadani on 26/01/25.
//

import SwiftUI

struct OnboardingView: View {
    
    var body: some View {
        TabView {
            ForEach(fruitsData) { fruit in
                FruitCardView(fruit: fruit)
            }
        }
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

#Preview {
    OnboardingView()
}
