//
//  TabViewView.swift
//  GOOD
//
//  Created by elamine heuss on 25/09/2023.
//

import SwiftUI

struct TabViewView: View {
    @StateObject var foodtitle : Foodtitle = Foodtitle()
    
    
    @StateObject var nameutilisateur : Nameutilisateur = Nameutilisateur()
    
    @StateObject var imaged : Imaged = Imaged()
    
    
    @StateObject var fooddiets : FoodDiets = FoodDiets()
    
    @StateObject var ingrediant : Ingrediant = Ingrediant()
    var body: some View {
        TabView {
             
            
           
            WelcomeView()
                        .tabItem {
                            Label("Parcourir", systemImage: "magnifyingglass")
                                .background(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                                .tag(0)
                        }

            StructuresView()
                        .tabItem {
                            Label("Structures", systemImage: "house").foregroundColor(.black)
                                .tag(1)
                                                       }
            AddAnnounceView()
                        .tabItem {
                            Label("Ajouter", systemImage: "plus.circle.fill")
                                .foregroundColor(.blue)
                                .tag(2)
                        }
            MessageBoxView()
                        .tabItem {
                            Label("Messages", systemImage: "message")
                                .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                                .tag(3)
                        }
            ProfileView()
                        .tabItem {
                            Label("Réglages", systemImage: "gearshape")
                                .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                                .tag(4)
                        }
                        
                }
        .tint(Color("Green1"))
        .environmentObject(foodtitle)
        .environmentObject(nameutilisateur)
        .environmentObject(imaged)
        .environmentObject(ingrediant)
        .environmentObject(fooddiets)
    }
}

#Preview {
    TabViewView()
}
