//
//  SwiftUIView.swift
//  
//
//  Created by Richard on 04.03.2024.
//

import SwiftUI

public struct SettingsSendFeedbackView: View {
    var label:String
    var color:Color
    ///Email subject
    var subject:String
    ///Body of the email
    var bodyMail:String
    ///Recipients of the email
    var to:String
    ///Show the settings view
    @Binding var show:Bool
    ///
    var isSheet:Bool
    
    
    public init(label: String, color: Color = Color.gray, subject: String, bodyMail: String = "", to: String,show:Binding<Bool>,isSheet:Bool = false) {
        self.label = label
        self.color = color
        self.subject = subject
        self.bodyMail = bodyMail
        self.to = to
        self._show = show
        self.isSheet = isSheet
    }
    
    public var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack{
                Text(LocalizedStringKey(label))
#if os(visionOS)
                    .foregroundColor(.primary)
#else
                    .foregroundStyle(color)
#endif
                Spacer()
                Button(action: {
                    if !isSheet{
                        EmailProvider.shared.sendMail(subject: subject, body: bodyMail, to: to)
                    }else{
                        show.toggle()
                    }
                }, label: {
                    HStack{
                        Text("Email")
                        Image(systemName: "envelope.fill")
                    }
                })
                
            }
        }
    }
}

#Preview {
    SettingsSendFeedbackView(label: "Feedback", subject: "Sending feedback on an Dreamie App", to: "johnsonpicardo@gmail.com", show: .constant(true))
}
