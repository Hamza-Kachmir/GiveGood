//
//  bookingConfirmedView.swift
//  GOOD
//
//  Created by elamine heuss on 22/09/2023.
//

import SwiftUI

struct bookingConfirmedView: View {
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
            
            
            Image("abdellah")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .cornerRadius(100)
            HStack{
                Text("Abdellah")
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
                                        DiscussionView() // discutionView
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
    }
}

#Preview {
    bookingConfirmedView()
}
