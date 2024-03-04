// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

struct SettingsFooterView:View {
    
    var author:String
    var privacyPolicy:String?
    
    var body: some View {
        HStack{
            Spacer()
            VStack{
                Text(author)
                if let pP = privacyPolicy, let url = URL(string: pP){
                    Link("Privacy Policy", destination: url)
                }
            }
            .foregroundStyle(Color.gray)
            Spacer()
        }
    }
}

#Preview{
    SettingsFooterView(author: "Richard Simonik",privacyPolicy: "https://en.wikipedia.org/wiki/Wikipedia")
}
