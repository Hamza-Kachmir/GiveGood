//
//  SaharConfirmedView.swift
//  ProjectAppleProgram
//
//  Created by elamine heuss on 27/09/2023.
//

import SwiftUI

struct SaharConfirmedView: View {
    @EnvironmentObject var imaged : Imaged
    @EnvironmentObject var foodtitle : Foodtitle
    @EnvironmentObject var nameutilisateur : Nameutilisateur
    @EnvironmentObject var ingrediant : Ingrediant
    @State var userValidation = Image(systemName: "checkmark.seal.fill")
    var body: some View {
        
        
        HStack{
            Spacer()
            Image("givegood2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70, height: 70)
                .padding(.top , 20)
            
        }
        
        VStack{
            
            
            Image("memoji")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .cornerRadius(100)
            HStack{
                Text(nameutilisateur.name)
                Text(userValidation)
            }
            ZStack{
                Rectangle()
                
                
                    .cornerRadius(20)
                    .foregroundColor(Color(red: 0.556, green: 0.827, blue: 0.623))
                    .frame(width:350)
                VStack{
                    Text("Ta réservation est  ")
                    
                        .font(.largeTitle)
                    
                    Text("Confirmée !")
                    
                        .font(.largeTitle)
                    
                    Image("valide1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 70, height: 70)
                    
                        .padding()
                    
                    ZStack{
                        Rectangle()
                            .frame(width:190, height: 50)
                            .cornerRadius(20)
                            .foregroundColor(Color(red: 0.559, green: 0.418, blue: 0.75))
                        
                        
                        NavigationLink(destination:
                                        MessageBoxView() // discutionView
                        ) {
                            Text("Envoyez un message")
                                .foregroundColor(.black)
                        }
                    }
                    Spacer()
                }.padding()
                
                
            }
            Spacer()
        }
        Text("Besoin d'aide ?")
    }
}

#Preview {
    SaharConfirmedView()
        .environmentObject(Foodtitle())
        .environmentObject(Nameutilisateur())
        .environmentObject(Imaged())
        .environmentObject(Ingrediant())
}
