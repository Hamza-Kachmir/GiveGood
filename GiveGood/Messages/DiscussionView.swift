import SwiftUI

struct DiscussionView: View {
    
    @State private var userInput: String = ""
    @State private var messages: [Message] = [
        Message(id: UUID(), text: "Bonjour et merci pour votre don !", received: false, timestamp: Date()),
        Message(id: UUID(), text: "Je vous en prie, c'est un plaisir, pensez-vous pouvoir arriver avant 18h?", received: true, timestamp: Date()),
        Message(id: UUID(), text: "Oui, je peux être là pour 17H45.😀", received: false, timestamp: Date()),
        Message(id: UUID(), text: "Parfait, appelez-moi lorsque vous êtes en bas !", received: true, timestamp: Date()),
    ]
    
    var body: some View {
        VStack {
            VStack {
                TitleRow()
                ScrollView {
                    ForEach(messages) { message in
                        MessageBubble(message: message)
                    }
                }
                .padding(.top, 20)
                .background(Color.white)
            }
            .background(Color("Gray"))
            
            HStack {
                TextField("Type your message...", text: $userInput)
                    .frame(height: 40)
                    .padding(.horizontal)
                    .background(Color("Gray"))
                
                Button(action: {
                    if !userInput.isEmpty {
                        let newMessage = Message(id: UUID(), text: userInput, received: false, timestamp: Date())
                        messages.append(newMessage)
                        userInput = ""
                    }
                }) {
                    Image(systemName: "paperplane.fill")
                        .foregroundColor(.white)
                        .padding(10)
                        .background(Color("Green1"))
                        .cornerRadius(50)
                }
                .padding(.trailing)
            }
            
            .padding(.horizontal)
            .padding(.vertical, 10)
            .background(Color("Gray"))
            .cornerRadius(50)
            .padding(10)
            
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DiscussionView_Previews: PreviewProvider {
    static var previews: some View {
        DiscussionView()
    }
}

