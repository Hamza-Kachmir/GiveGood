//
//  StructuresView.swift
//  GOOD
//
//  Created by elamine heuss on 25/09/2023.
//

import SwiftUI

struct StructuresView: View {
    
    @State var colorA = (Color(red: 0.556, green: 0.827, blue: 0.623))
    @State var userValidation = Image(systemName: "checkmark.seal.fill")
    @State private var searchText = ""
    @State private var isSearching = false
    
    
    var body: some View {
        NavigationStack{
            ScrollView{
                HStack{
                    Spacer()
                    
                    
                    Image("givegood2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 70, height: 70)
                        .padding()
                    
                    
                }
                HStack{
                    Text("Structure à proximité")
                        .font(.title)
                        .fontWeight(.medium)
                        .padding()
                    Text(Image(systemName: "checkmark.seal.fill"))
                    Spacer()
                    
                }
            
                
                NavigationLink(destination:
                                StructureDetailsView()
                ) {
                    
                    ScrollView(.horizontal, showsIndicators: false) { // structure 1
                        
                        HStack(spacing: 10) { // L'espace entre les éléments
                            ForEach(1..<6) { index in
                                CardView(index: index)
                                
                                    .frame(width:350, height: 250)
                                    .foregroundColor(.black)
                                
                            }
                        }
                        .padding()
                    }
                }
                
                
                ScrollView(.horizontal, showsIndicators: false) { // structure 1
                    HStack(spacing: 10) { // L'espace entre les éléments
                        ForEach(1..<6) { index in
                            CardView3(index: index)
                                .frame(width:350, height: 250)
                            
                        }
                    }
                    .padding()
                }
                
                ScrollView(.horizontal, showsIndicators: false) {  //structure 2
                    HStack(spacing: 10) { // L'espace entre les éléments
                        ForEach(1..<6) { index in
                            CardView2(index: index)
                                .frame(width:350, height: 250)
                            
                        }
                    }
                    .padding()
                }
            }
        }
    }
}

struct CardView2: View {  // structure 2
    let index: Int
    
    var body: some View {
        
        
        
        ZStack {
            
            Rectangle()
                .cornerRadius(20)
            
                .frame(width:350, height: 250)
                .foregroundColor(Color(red: 0.556, green: 0.827, blue: 0.623))
                .padding()
            
            VStack{
                HStack{
                    
                    Image("Associasion")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:60, height: 60)
                        .cornerRadius(40)
                    
                    Text("Share FOOD \(index)")
                    Text(Image(systemName: "checkmark.seal.fill"))
                        .foregroundColor(.white)
                    
                }
                Text("Distribution de repas tous les jeudis & dimanches \(index) ")
                    .fontWeight(.medium)
                
                Image("Associasion")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:80, height: 80)
                    .cornerRadius(40)
                    .padding()
            }
        }
        
    }
}






struct CardView3: View {  // structure 2
    let index: Int
    
    var body: some View {
        ZStack {
            
            Rectangle()
                .cornerRadius(20)
            
                .frame(width:350, height: 250)
                .foregroundColor(Color(red: 0.556, green: 0.827, blue: 0.623))
                .padding()
            
            VStack{
                HStack{
                    Image("boulangerie")
                    
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:60, height: 60)
                        .cornerRadius(40)
                    
                    Text("Share FOOD \(index)")
                    Text(Image(systemName: "checkmark.seal.fill"))
                        .foregroundColor(.white)
                    
                }
                Text("Distribution de repas tous les jeudis & dimanches \(index) ")
                    .fontWeight(.medium)
                Image("boulangerie")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:80, height: 80)
                    .cornerRadius(40)
                    .padding()
            }
        }
    }
}





struct CardView: View {  // structure 1
    let index: Int
    
    var body: some View {
        ZStack {
            
            
            
            Rectangle()
                .cornerRadius(20)
            
                .frame(width:350, height: 250)
                .foregroundColor(Color(red: 0.556, green: 0.827, blue: 0.623))
                .padding()
            
            VStack{
                HStack{
                    
                    Image("restorantducoeur")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:60, height: 60)
                        .cornerRadius(40)
                    
                    Text("Resto du coeur \(index)")
                    Text(Image(systemName: "checkmark.seal.fill"))
                        .foregroundColor(.white)
                    
                }
                Text("Distribution de repas tous les jeudis & dimanches \(index) ")
                    .fontWeight(.medium)
                
                Image("restorantducoeur")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:80, height: 80)
                    .cornerRadius(40)
                    .padding()
            }
        }
        
    }
}

#Preview {
    StructuresView()
}
