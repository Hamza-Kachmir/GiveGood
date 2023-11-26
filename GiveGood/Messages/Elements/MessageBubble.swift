//
//  MessageBubble.swift
//  ChatAppDemo
//
//  Created by Marlene on 21/09/2023.
//

import SwiftUI

struct MessageBubble: View {
    var message: Message
    @State private var showTime = false
    var body: some View {
        
        VStack(alignment: message.received ? .leading : .trailing) {
            HStack {
                Text(message.text)
                    .padding()
                    .background(message.received ? Color("Gray") : Color("Green2"))
                    .cornerRadius(30)
            }
            .frame(maxWidth: 300, alignment: message.received ? .leading : .trailing)
            .onTapGesture {
                withAnimation {
                    showTime.toggle()
                }
            }
            if showTime {
                Text("\(message.timestamp.formatted(.dateTime.hour().minute()))")
                    .font(.caption2)
                    .foregroundColor(.black)
                    .padding(message.received ? .leading: .trailing)
                    .padding(.horizontal, 10)
            }
            
        }
        .frame(maxWidth: .infinity, alignment: message.received ? .leading : .trailing)
        .padding(message.received ? .leading : .trailing)
        .padding(.horizontal, 10)
    }
}

struct MessageBubble_Previews: PreviewProvider {
    static var previews: some View {
        MessageBubble(message: Message(id: UUID(), text:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris lacinia massa quis ante lacinia venenatis. Vivamus tempus dolor felis, eu gravida magna sollicitudin id. Aenean convallis leo at tellus gravida, a tempus nulla volutpat.", received: false, timestamp: Date()))
    }
}
