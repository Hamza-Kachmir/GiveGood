//
//  AccountCreatedView.swift
//  Ratatouille
//
//  Created by Hamza  on 22/09/2023.
//

import SwiftUI

struct AccountCreatedView: View {
    @Binding var selectUserType: Int
    @Binding var firstName: String
    @Binding var structureName: String
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                if selectUserType == 0 {
                    Text(" Bienvenue \(firstName) !")
                        .bold()
                        .font(.largeTitle)
                        .padding()
                } else {
                    Text(" Bienvenue \(structureName) !")
                        .bold()
                        .font(.largeTitle)
                        .padding()
                }
                
                VStack {
                    Text("Votre profil est créé !")
                        .bold()
                        .padding()
                    Text("N’hésitez pas à ajouter votre pièce d’identité pour pouvoir valider votre profil et poster des annonces !")
                        .padding()
                    
                    
                    NavigationLink(destination: IdentityScanView().navigationBarBackButtonHidden(true)) {
                        Text("Validez votre profil")
                            .foregroundColor(.black)
                            .padding()
                            .background(Color.purple)
                            .cornerRadius(10)
                            .padding()
                        
                    }
                }
                .background(Color.green)
                .cornerRadius(10)
                .padding()
                Spacer()
            }
        }
    }
}

struct AccountCreatedView_Previews: PreviewProvider {
    static var previews: some View {
        AccountCreatedView(
            selectUserType: .constant(0),
            firstName: .constant("Prénom"),
            structureName: .constant("Nom de la Structure")
        )
    }
}

