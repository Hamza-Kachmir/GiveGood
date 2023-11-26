//
//  ReservationView.swift
//  GOOD
//
//  Created by elamine heuss on 21/09/2023.
//

import SwiftUI

struct ReservationView: View {
        @State var userType = ""
        @State var datePicker = ""
        @State private var selectedOption = 0
        let options = ["18 h 45", "19h 30", "20h 30"]
        @State var userValidation = Image(systemName: "checkmark.seal.fill")

   
   

    

     var body: some View {
         NavigationStack{
             VStack{
                 
                 
                 Image("abdellah")
                     .resizable()
                     .aspectRatio(contentMode: .fit)
                     .frame(width: 100, height: 100)
                     .cornerRadius(200)
                     
                 HStack{
                     Text("Abdellah")
                     Text(userValidation)
                         
                 }
                 
             }
             ScrollView{
         HStack{
             
//             Image("Imagelogo")
//
//                 .resizable()
//                 .aspectRatio(contentMode: .fit)
//                 .frame(width: 70, height: 70)
//                 .padding(.top , 20)
//
         }
   
               
            ZStack{
            Rectangle() // grand rectangle
                
                   
                
                
            //        Text(userName)
                .cornerRadius(20)
                .foregroundColor(Color(red: 0.556, green: 0.827, blue: 0.623))
                .frame(width:350, height: 550)
                VStack{
//                    ZStack{// spagetti
                    
                 
                    Image("rizcurry")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                            .cornerRadius(20)
                          
                            
                           
                            
                            
//                    }
                    Text("Riz curry")
                        .font(.largeTitle)
                       
                    Text("Sauce curry , riz , huile d'olive , parmezan , sel , beurre  ")
                        
//                    Text("Trop trop bon j'aime trop")
//                        .padding()
                    Text("")
                        .lineSpacing(10) // Ajouter un espacement entre les lignes
                    
                    
                    
                    
                    
                    
                    
                    VStack {// du pickers

                        Picker("Vous avez sélétionné", selection: $selectedOption) {
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
                            ReservationView()
            ) {
                ZStack{
                    Rectangle()
                        .cornerRadius(20)
                        .foregroundColor(Color(red: 0.556, green: 0.827, blue: 0.623))
                        .frame(width:170, height: 60)
                    
                    
                    
                    
                    
                    NavigationLink(destination:
                                    bookingConfirmedView()
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
    ReservationView()
        .environmentObject(Foodtitle())
        .environmentObject(Nameutilisateur())
        .environmentObject(Imaged())
}










 
