
//
//  AnnouncePosted.swift
//  GOOD
//
//  Created by Apprenant 37 on 24/09/2023.
//

import SwiftUI

struct AnnouncePosted: View {
    @State var foodtitle : Foodtitle = Foodtitle()
    var body: some View {

        VStack{
          
            Image("givegood2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            

        ZStack{
            Rectangle()
                .foregroundColor(Color(red: 0.556, green: 0.827, blue: 0.623))
                .frame(width: 280, height: 180)
                .cornerRadius(20)
                .multilineTextAlignment(.center)
                .padding(20)
            VStack{
                Text("votre annonce est postée")
                    .fontWeight(.bold)
               
                Image("valide1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 70)
         
             
            }
        }
            Text("Besoin d'aide ?")
                .padding()
         
    }

//        Fin du body
    }
}

struct AnnouncePosted_Previews: PreviewProvider {
    static var previews: some View {
        AnnouncePosted()
    }
}
