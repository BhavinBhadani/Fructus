//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Bhavin Bhadani on 31/01/25.
//

import SwiftUI

struct SettingsRowView: View {
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical, 4)
            
            HStack {
                Text(name)
                    .foregroundStyle(.gray)
                Spacer()
                Group {
                    if let content {
                        Text(content)
                    } else if let linkLabel,
                              let linkDestination,
                              let linkURL = URL(string: "https://\(linkDestination)") {
                        Link(destination: linkURL) {
                            Text(linkLabel)
                        }
                        Image(systemName: "arrow.up.right.square")
                            .foregroundStyle(.pink)
                    }
                }
            }
        }
    }
}

#Preview(traits: .fixedLayout(width: 375, height: 60)) {
    SettingsRowView(name: "Developer", content: "John")
        .padding()
}

#Preview("Link", traits: .fixedLayout(width: 375, height: 60)) {
    SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
        .padding()
}
