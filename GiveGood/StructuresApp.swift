//
//  StructuresApp.swift
//  Ratatouille
//
//  Created by Hamza  on 22/09/2023.
//

import Foundation
import SwiftUI

// Structure pour Textfield page d'inscription
struct CustomTextField: View {
    var placeholder: String
    @Binding var text: String
    var isFieldEmpty: Bool
    
    init(_ placeholder: String, text: Binding<String>, isFieldEmpty: Bool) {
        self.placeholder = placeholder
        self._text = text
        self.isFieldEmpty = isFieldEmpty
    }
    
    var body: some View {
        TextField(placeholder, text: $text)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .overlay(RoundedRectangle(cornerRadius: 8).stroke(isFieldEmpty && text.isEmpty ? Color.red : Color.clear, lineWidth: 2))
            .bold()
            .padding(.bottom, 20)
    }
}

// Tableaux pour page d'inscription
let userTypes = ["Particulier", "Structure"]
let userDiets = ["Pas de régime alimentaire", "Halal", "Végan", "Bio"]

// Class pour function qui vérifie si les champs sont valide // fonction pour save la data entré dans les champs
class StructuresApp {
    
    static func areFieldsValid(selectUserType: Int, userEmail: String, userFirstName: String, userLastName: String, structureName: String, siret: String, numberPhone: String) -> Bool {
        if selectUserType == 0 {
            return !userEmail.isEmpty && !userFirstName.isEmpty && !userLastName.isEmpty && !numberPhone.isEmpty
        } else {
            return !userEmail.isEmpty && !structureName.isEmpty && !siret.isEmpty && !numberPhone.isEmpty
        }
    }
    
    static func saveFormData(id: UUID, selectUserType: Int, userEmail: String, userFirstName: String, userLastName: String, structureName: String, numberPhone: String, siret: String, birthDate: Date, selectDiet: Set<String>, allFormData: inout [[String: Any]]) -> [String: Any] {
        var formData: [String: Any] = [:]
        formData["id"] = id
        formData["selectUserType"] = selectUserType
        formData["userEmail"] = userEmail
        formData["userFirstName"] = userFirstName
        formData["userLastName"] = userLastName
        formData["structureName"] = structureName
        formData["numberPhone"] = numberPhone
        formData["siret"] = siret
        formData["birthDate"] = birthDate
        formData["selectDiet"] = Array(selectDiet)
        allFormData.append(formData)
        return formData
    }
}





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
