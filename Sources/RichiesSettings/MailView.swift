//
//  File.swift
//  
//
//  Created by Richard on 05.03.2024.
//

import SwiftUI
import MessageUI

public struct MailView : UIViewControllerRepresentable{
    
    var content: String
    var to: String
    var subject: String
    
    public init(content: String, to: String, subject: String) {
        self.content = content
        self.to = to
        self.subject = subject
    }
    
    public typealias UIViewControllerType = MFMailComposeViewController
    
    public func updateUIViewController(_ uiViewController: MFMailComposeViewController, context: Context) {
        
    }
    
    public func makeUIViewController(context: Context) -> MFMailComposeViewController {
        if MFMailComposeViewController.canSendMail(){
            let view = MFMailComposeViewController()
            view.mailComposeDelegate = context.coordinator
            view.setToRecipients([to])
            view.setSubject(subject)
            view.setMessageBody(content, isHTML: false)
            return view
        } else {
            return MFMailComposeViewController()
        }
    }
    
    public func makeCoordinator() -> Coordinator {
        return Coordinator(self)
    }
    
    
    public class Coordinator : NSObject, MFMailComposeViewControllerDelegate{
        
        var parent : MailView
        
        init(_ parent: MailView){
            self.parent = parent
        }
        
        public func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
            controller.dismiss(animated: true)
        }
        
        
    }
    
    
}
