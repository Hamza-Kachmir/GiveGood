//
//  ContentView.swift
//  GiveGood
//
//  Created by Marlene on 20/09/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 2
    var body: some View {
        TabView {
            
            
           
            HomeView()
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
            AddView()
                        .tabItem {
                            Label("Ajouter", systemImage: "plus.circle.fill")
                                .foregroundColor(.blue)
                                .tag(2)
                        }
            MessagesView()
                        .tabItem {
                            Label("Messages", systemImage: "message")
                                .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                                .tag(3)
                        }
            SettingsView()
                        .tabItem {
                            Label("Réglages", systemImage: "gearshape")
                                .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                                .tag(4)
                        }
                        
                }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
