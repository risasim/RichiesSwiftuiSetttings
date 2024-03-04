//
//  SwiftUIView.swift
//  
//
//  Created by Richard on 04.03.2024.
//

import SwiftUI

public struct SettingsToggle: View {
    
    @Binding var toggle:Bool
    var text:String
    var divider:Bool
    var color:Color
    
    public init(toggle: Binding<Bool>, text: String, divider: Bool=true, color: Color=Color.gray) {
        self._toggle = toggle
        self.text = text
        self.divider = divider
        self.color = color
    }
    
    public var body: some View {
        HStack{
            Toggle(text, isOn: $toggle)
#if os(visionOS)
                .foregroundColor(.primary)
#else
                .foregroundStyle(color)
#endif
        }
        if divider{
            Divider().padding(.vertical, 4)
        }
    }
}

#Preview {
    SettingsToggle(toggle: .constant(false), text: "Game settings")
}
