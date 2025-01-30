//
//  SettingsView.swift
//  Fructus
//
//  Created by Bhavin Bhadani on 30/01/25.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                }
                .navigationTitle("Settings")
                .navigationBarItems(
                    trailing:
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Image(systemName: "xmark")
                        }
                )
                .padding()
            }
        }
    }
}

#Preview {
    SettingsView()
        .preferredColorScheme(.dark)
}
