//
//  SwiftUIView.swift
//  
//
//  Created by Richard on 04.03.2024.
//

import SwiftUI

public struct SettingsAboutApp: View {
    
    public var showUpDivider:Bool = false
    public var nameOfAppLogo:String?
    public var appDescription:String
    public var appIconProvider = AppIconProvider.appIcon()
    
    public var body: some View {
        Divider().padding(.vertical, 4)
        HStack(alignment: .center, spacing: 10){
            if let name = nameOfAppLogo{
                Image(name)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .cornerRadius(9)
            }else if let image = UIImage(named: appIconProvider) {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .cornerRadius(9)
            }
            Text(LocalizedStringKey(appDescription))
                .font(.footnote)
        }
    }
}
