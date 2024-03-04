// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

public struct SettingsFooterView:View {
    
    public var author:String
    public var privacyPolicy:String?
    public var appVersion:String = AppVersionProvider.appVersion()
    
    public var body: some View {
        HStack{
            Spacer()
            VStack{
                Text("Version \(appVersion)")
                if let pP = privacyPolicy, let url = URL(string: pP){
                    Link("Privacy Policy", destination: url)
                }
                Text(author)
            }
            .foregroundStyle(Color.gray)
            .font(.footnote)
            Spacer()
        }
    }
}

#Preview{
    SettingsFooterView(author: "Richard Simonik",privacyPolicy: "https://en.wikipedia.org/wiki/Wikipedia")
}
