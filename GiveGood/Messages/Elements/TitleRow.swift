//
//  TitleRow.swift
//  ChatAppDemo
//
//  Created by Marlene on 21/09/2023.
//

import SwiftUI

struct TitleRow: View {
    var image = ("abdellah")
    var name = "Abdellah"
    
    var body: some View {
        HStack(spacing: 20){
            
            Image("abdellah")
                .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
        
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title).bold()
            }
            
            
            Image(systemName: "phone.fill")
                .padding(10)
                .foregroundColor(Color("Green1"))
                .background(.white)
                .cornerRadius(50)
        }
        .padding()
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(Color("Gray"))
    }
}
