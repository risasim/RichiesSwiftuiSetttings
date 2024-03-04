//
//  SwiftUIView.swift
//  
//
//  Created by Richard on 04.03.2024.
//

import SwiftUI

public struct SettingsInfoRowView: View {
    
    public var label: String
    public var description: String? = nil
    public var linkLabel:String? = nil
    public var linkDestination : String? = nil
    
    public var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack{
                Text(LocalizedStringKey(label))
#if os(visionOS)
                    .foregroundColor(.primary)
#else
                    .foregroundColor(.gray)
#endif
                Spacer()
                if description != nil {
                    Text(LocalizedStringKey(description!))
                } else if linkLabel != nil && linkDestination != nil{
                    Link( linkLabel! ,destination: URL(string: "http://\(linkDestination!)")!)
                    #if os(visionOS)
                        .foregroundColor(.primary)
                    #endif
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.blue)
                }else {
                    EmptyView()
                }
                
            }
        }
    }
}

#Preview {
    SettingsInfoRowView(label: "Version", description: "0.8")
}
