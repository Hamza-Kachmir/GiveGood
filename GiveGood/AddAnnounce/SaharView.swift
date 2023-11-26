//
//  SaharView.swift
//  ProjectAppleProgram
//
//  Created by elamine heuss on 27/09/2023.
//

import SwiftUI

struct SaharView: View {
    @State var userType = ""
    @State var datePicker = ""
    @State private var selectedOption = 0
    let options = ["18 h 45", "19h 30", "20h 30"]
    @State var userValidation = Image(systemName: "checkmark.seal.fill")
    
    @EnvironmentObject var imaged : Imaged
    @EnvironmentObject var foodtitle : Foodtitle
    @EnvironmentObject var nameutilisateur : Nameutilisateur
    @EnvironmentObject var ingrediant : Ingrediant
    
    
    
    
    var body: some View {
        NavigationStack{
            VStack{
                
                
                Image("memoji")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .cornerRadius(200)
                
                HStack{
                    Text(nameutilisateur.name)
                    Text(userValidation)
                    
                }
                
            }
            ScrollView{
                
                ZStack{
                    Rectangle() // grand rectangle
                    
                    
                    
                    
                    //        Text(userName)
                        .cornerRadius(20)
                        .foregroundColor(Color(red: 0.556, green: 0.827, blue: 0.623))
                        .frame(width:350, height: 550)
                    VStack{
                        //                    ZStack{// spagetti
                        
                        
                        imaged.image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                            .cornerRadius(20)
                        
                        
                        
                        
                        
                        
                        //                    }
                        Text(foodtitle.name)
                            .font(.largeTitle)
                        
                        Text(ingrediant.name)
                        
                        //                    Text("Trop trop bon j'aime trop")
                        //                        .padding()
                        Text("")
                            .lineSpacing(10) // Ajouter un espacement entre les lignes
                        
                        
                        
                        
                        
                        
                        
                        VStack {// du pickers
                            
                            Picker("Vous avez séléctionné", selection: $selectedOption) {
                                ForEach(0 ..< options.count) { index in
                                    Text(options[index])
                                    
                                    
                                    
                                }
                                
                            }
                            .pickerStyle(SegmentedPickerStyle())
                            .padding()
                            
                            Text("Vous avez sélectionné : \(options[selectedOption]) ")
                                .padding()
                            
                        }
                        Text(getCurrentDate())
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                }
                Spacer()
                NavigationLink(destination:
                                SaharConfirmedView()
                ) {
                    ZStack{
                        Rectangle()
                            .cornerRadius(20)
                            .foregroundColor(Color(red: 0.556, green: 0.827, blue: 0.623))
                            .frame(width:170, height: 60)
                        
                        
                        
                        
                        
                        NavigationLink(destination:
                                        SaharConfirmedView()
                        ) {
                            Text("Réserver ! ")
                                .font(.title2)
                            
                            
                                .foregroundColor(.black)
                        }
                    }
                }
            }
        }
    }
}



#Preview {
    
    SaharView()
        .environmentObject(Foodtitle())
        .environmentObject(Nameutilisateur())
        .environmentObject(Imaged())
        .environmentObject(Ingrediant())
    
}
