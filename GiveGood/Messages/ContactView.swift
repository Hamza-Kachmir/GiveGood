//
//  PresentationView.swift
//  GiveGood
//
//  Created by Marlene on 27/09/2023.
//

import SwiftUI

struct ContactView: View {
    var image: String
    var name: String
    var don: String
    var body: some View {
        HStack {
            ZStack {
                Rectangle()
                    .cornerRadius(20)
                    .foregroundColor(Color("Green2"))
                    .frame(width:350, height: 80)
                HStack {
                    Image(image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                        .padding(.trailing,5 )
                    Text(name)
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                    Image(systemName:"checkmark.seal.fill")
                        .foregroundColor(.black)
                    Spacer()
                    Image(don)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                        .padding(10)
                        .cornerRadius(20)
        
                        
                }
                .padding()
            }
        }
        .padding()
    }
}
#Preview {
    ContactView(image: "hamza", name: "Hamza", don: "lasagnes")
}
