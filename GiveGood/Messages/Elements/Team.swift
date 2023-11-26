//
//  Team.swift
//  GiveGood
//
//  Created by Marlene on 27/09/2023.
//

import Foundation

struct Team : Identifiable {
    var id = UUID()
    var name : String
    var image : String
    var don : String
    var tel : Bool
    
}

var teams : [Team] = [
    Team(name: "Abdellah", image: "abdellah", don: "rizcurry", tel: true),
    Team(name: "Sofiane", image: "sofiane", don: "lasagnes", tel: true),
    Team(name: "Sahar", image: "sahar", don: "lasagnes", tel: true),
    Team(name: "Hamza", image: "hamza", don: "lasagnes", tel: false),
    Team(name: "Louise", image: "louise", don: "lasagnes", tel: true),
    Team(name: "Marlene", image: "marlene", don: "lasagnes", tel: false),
    
  
]
