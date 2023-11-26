//
//  StructAnnonce.swift
//  GOOD
//
//  Created by elamine heuss on 20/09/2023.
//

import Foundation
import SwiftUI


        func getCurrentDate() -> String {
            let currentDate = Date()
            let dateFormatter = DateFormatter()
            dateFormatter.locale = Locale(identifier: "fr_FR")
            dateFormatter.dateStyle = .full
            return dateFormatter.string(from: currentDate)
    }



class Foodtitle : ObservableObject {
    @Published var name : String = ""
    @Published var isIndoor = false
}



class Nameutilisateur : ObservableObject{
    
    @Published var name : String = ""
    @Published var isIndoor = false
}




class Imaged : ObservableObject{
    
    @Published var image : Image = Image ("")
    @Published var isIndoor = false

}




class FoodDiets : ObservableObject {
    @Published var name : String = ""
    @Published var isIndoor = false
}

class Ingrediant : ObservableObject{
    @Published var name : String = ""
    @Published var isIndoor = false
}









struct Person {
   var age: Int
   var firstName: String
   var lastName: String

   }

var jean = Person(age: 26, firstName: "Jean", lastName: "Code")

