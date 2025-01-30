//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Bhavin Bhadani on 30/01/25.
//

import SwiftUI

struct SettingsLabelView: View {
    var title: String
    var image: String
    
    var body: some View {
        HStack {
            Text(title.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: image)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    SettingsLabelView(title: "Fructus", image: "info.circle")
        .padding()
}
