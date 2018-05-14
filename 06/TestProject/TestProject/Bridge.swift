//
//  Bridge.swift
//  TestProject
//
//  Created by qxxl007 on 2018/5/14.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

import Foundation

protocol MessageProtocol {
    
    var messageString: String { get set }
    
    init(messageString: String)
    func prepareMessage()
}

protocol SenderProtocol: class {
    
    var message: MessageProtocol? { get set }
    
    func sendMessage()
    func verifyMessage()
}

class PlainTextMessage: MessageProtocol {
    
    var messageString: String
    
    required init(messageString: String) {
        
        self.messageString = messageString
    }
    
    func prepareMessage() {
        
        // Nothing to do
    }
}

class DESEncryptedMessage: MessageProtocol {
    
    var messageString: String
    
    required init(messageString: String) {
        
        self.messageString = messageString
    }
    
    func prepareMessage() {
        
        self.messageString = "DES: " + messageString
    }
}

class EmailSender: SenderProtocol {
    
    var message: MessageProtocol?
    
    func sendMessage() {
        
        guard let message = message else { return }
        
        print("Sending through E-Mail:")
        print("    \(message.messageString)")
    }
    
    func verifyMessage() {
        
        print("Verifying E-Mail message")
    }
}

class SMSSender: SenderProtocol {
    
    var message: MessageProtocol?
    
    func sendMessage() {
        
        guard let message = message else { return }
        
        print("Sending through SMS:")
        print("    \(message.messageString)")
    }
    
    func verifyMessage() {
        
        print("Verifying SMS message")
    }
}

struct MessageingBridge {
    
    static func sendMessage(message: MessageProtocol,
                            sender: SenderProtocol) {
        
        message.prepareMessage()
        sender.message = message
        sender.verifyMessage()
        sender.sendMessage()
    }
}
