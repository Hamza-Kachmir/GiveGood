//
//  IdentityVerified View .swift
//  GiveGood
//
//  Created by Louise Ta on 27/09/2023.
//

import Foundation
import SwiftUI

struct IdentityVerifiedView: View {
    
        @State var showTabView = false
    var body: some View {
            VStack {
                Label("Vérification du profil", systemImage: "checkmark.seal")
                    .font(.title)
                    Image("checkmark.seal")
                Text("Félicitations ! Ton profil est désormais vérifié.")
                    .padding()
                
                VStack {
                    Image("ratatouille")
                        .resizable()
                        .frame(width: 200, height: 200)
                }
                Button {
                    showTabView = true
                }label: {
                    Text("Aller à l'accueil")
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
            }
            .fullScreenCover(isPresented: $showTabView){
                TabViewView()
            }

    }
}

#Preview {
    IdentityVerifiedView()
}
