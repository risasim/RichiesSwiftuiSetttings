// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

struct SettingsFooterView:View {
    
    var author:String
    var privacyPolicy:String?
    var appVersion:String = AppVersionProvider.appVersion()
    
    var body: some View {
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
            Spacer()
        }
    }
}

#Preview{
    SettingsFooterView(author: "Richard Simonik",privacyPolicy: "https://en.wikipedia.org/wiki/Wikipedia")
}
