import SwiftUI

struct StructureDetailsView: View {
    @State var userType = ""
    @State var datePicker = ""
    @State private var selectedOption = 0
    let options = ["18 h 45", "19h 30", "20h 30"]
    @State var userValidation = Image(systemName: "checkmark.seal.fill")
    
    var body: some View {
        
        
        ScrollView{
            
            
            ZStack{
                Rectangle()
                    .cornerRadius(20)
                    .foregroundColor(Color(red: 0.556, green: 0.827, blue: 0.623))
                    .frame(width:350, height: 600)
                VStack{
                    //                    ZStack{// spagetti
                    Image("restorantducoeur")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 225, height: 225)
                        .cornerRadius(40)
                    
                    
                    
                    
                    //                    }
                    Text("Resto du coeur")
                    
                        .font(.largeTitle)
                    
                    Text("Ceux repas as étais crée as partir de sauce tomage et d'huile de très bonne  ")
                        .padding()
                    //                    Text("Trop trop bon j'aime trop")
                    //                        .padding()
                    Text("magnifique caliente")
                        .lineSpacing(10) // Ajouter un espacement entre les lignes
                    
                    Text(getCurrentDate())
                    
                }
                
            }
            Spacer()
            NavigationLink(destination:
                            StructureDetailsView()
            ) {
                ZStack{
                    Rectangle()
                        .cornerRadius(20)
                        .foregroundColor(Color(red: 0.556, green: 0.827, blue: 0.623))
                        .frame(width:170, height: 60)
                    Text("Réserver ! ")
                        .font(.title2)
                    
                    
                        .foregroundColor(.black)
                }
            }
        }
    }
}


#Preview {
    StructureDetailsView()
}
