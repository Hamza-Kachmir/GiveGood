//
//  Message.swift
//  
//
//  Created by Marlene on 21/09/2023.
//

import Foundation


struct Message: Identifiable, Codable {
    var id: UUID
    var text: String
    var received: Bool
    var timestamp: Date
}



var messages : [Message] = [
    Message(id: UUID(), text: "Bonjour et merci pour votre don !", received: false, timestamp: Date()),
    Message(id: UUID(), text: "Je vous en prie, c'est un plaisir, pensez-vous pouvoir arriver avant 18h?", received: true, timestamp: Date()),
    Message(id: UUID(), text: "Oui, je peux être là pour 17H45.😀", received: false, timestamp: Date()),
    Message(id: UUID(), text: "Parfait, appelez-moi lorsque vous êtes en bas !", received: true, timestamp: Date()),
  
]
