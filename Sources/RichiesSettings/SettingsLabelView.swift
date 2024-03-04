//
//  SwiftUIView.swift
//  
//
//  Created by Richard on 04.03.2024.
//

import SwiftUI

public struct SettingsLabelView: View {
    
    var label: String
    var image: String
    
    public var body: some View {
        HStack{
            Text(LocalizedStringKey(label))
                .textCase(.uppercase)
            Spacer()
            Image(systemName: image)
        }
        .fontWeight(.bold)
    }
}

#Preview {
    SettingsLabelView(label: "Application", image: "iphone")
}
