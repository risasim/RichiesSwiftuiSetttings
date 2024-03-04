//
//  File.swift
//  
//
//  Created by Richard on 04.03.2024.
//

import Foundation
import MessageUI


public class EmailProvider:NSObject, MFMailComposeViewControllerDelegate{
    public static let shared  = EmailProvider()
    private override init() { }
    
    public func sendMail(subject:String, body:String, to:String){
        if !MFMailComposeViewController.canSendMail(){
            print("Cannot send the email")
            return
        }
        
        let mailComposer = MFMailComposeViewController()
        mailComposer.mailComposeDelegate = self
        mailComposer.setSubject(subject)
        mailComposer.setCcRecipients([to])
        mailComposer.setMessageBody(body, isHTML: false)
        EmailProvider.getRootViewController()?.present(mailComposer, animated: true)
    }
    
    public func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        EmailProvider.getRootViewController()?.dismiss(animated: true, completion: nil)
    }
    
    static func getRootViewController() -> UIViewController? {
        // In SwiftUI 2.0
        UIApplication.shared.windows.first?.rootViewController
    }
}
