//
//  IdentityScanView.swift
//  GiveGood
//
//  Created by Louise Ta on 26/09/2023.
//

import SwiftUI
import PhotosUI


struct IdentityScanView: View {
    @State var selectedItems: [PhotosPickerItem] = []
    @State var isIdentityValidated: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Label("Vérification du profil", systemImage: "checkmark.seal")
                    .font(.title)
                    Image("checkmark.seal")
                Text("Ajoute ta pièce d’identité pour pouvoir t’identifier et devenir donneur.")
                    .padding()
                
                VStack {
                    Image("idcard")
                        .resizable()
                        .frame(width: 400, height: 400)
                }
                
                VStack {
                    PhotosPicker(selection: $selectedItems,
                                 maxSelectionCount: 2,
                                 matching: .images
                    ) {
                        Text("Ajouter")
                            .foregroundColor(.white)
                            .padding()
                            .background(.green)
                            .cornerRadius(10)
                    }.onChange(of: selectedItems) { _ in
                        if (selectedItems.count == 2) {
                            isIdentityValidated = true
                        }
                    }
                    NavigationLink(destination: IdentityVerifiedView().navigationBarBackButtonHidden(true), isActive: $isIdentityValidated) {
                        Text("")
                    }
                }
            }
        }
    }
}
#Preview {
    IdentityScanView()
}
