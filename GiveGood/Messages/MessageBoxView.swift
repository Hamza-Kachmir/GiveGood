//
//  MessageBoxView.swift
//  Ratatouille
//
//  Created by Hamza  on 22/09/2023.
//

import SwiftUI

struct MessageBoxView: View {
    var body: some View {
        
        
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(teams){ team in
                        NavigationLink {
                            DiscussionView()
                        } label: {
                            ContactView(image: team.image, name: team.name, don: team.don)
                            
                        }
                        .padding(.bottom, -30.0)
                        
                        
                    }
                }
                .navigationTitle("Messagerie")
            }
        }
    }
}





#Preview {
    MessageBoxView()
}

