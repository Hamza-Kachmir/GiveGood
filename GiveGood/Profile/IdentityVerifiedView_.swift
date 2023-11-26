//
//  IdentityVerified View .swift
//  GiveGood
//
//  Created by Louise Ta on 27/09/2023.
//

import Foundation
import SwiftUI

struct IdentityVerifiedView: View {
    
    var body: some View {
        NavigationView {
            
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
                
            }
            
        }
    }
}

#Preview {
    IdentityVerifiedView()
}
