//
//  AddAnnounce.swift
//  GOOD
//
//  Created by Apprenant 37 on 25/09/2023.
//

import SwiftUI
import PhotosUI


struct AddAnnounceView: View {
    
    @State private var AnnounceData: [String: Any] = [:]
    @State private var allAnnounceData: [[String: Any]] = []
    
    @State var id = UUID()
    @State var selectfoodType = 0
    @State var foodTypes = ["Repas maison","Denrée alimentaire"]

    @State var foodTitle = ""
    
    
    @State var nameUtilisateur = ""
    
    
    
    @State var Imaged = ""
    
    
    

    @State var selectionDiet = ""
    
    var foodDiets = ["Pas de régime alimentaire", "AVS", "Bio"]

    @State var foodIngredient = ""
    
    
    
    @EnvironmentObject var foodtitle : Foodtitle
    
    @EnvironmentObject var nameutilisateur : Nameutilisateur
    
    @EnvironmentObject var imaged : Imaged
    
    
    @EnvironmentObject var fooddiets : FoodDiets
    
    @EnvironmentObject var ingrediant : Ingrediant
    
    
    @State private var selectedPhoto: PhotosPickerItem? = nil

    
    func saveAnnounceData() {
        AnnounceData["id"] = id
        AnnounceData["selectfoodType"] = selectfoodType
//        AnnounceData["foodTitle"] = foodTitle
//        AnnounceData["Nom Utilisateur"] = NameUtilisateur
        AnnounceData["foodAllergy"] = foodIngredient
        AnnounceData["selectionDiet"] = Array(selectionDiet)
        AnnounceData["Photo"] = selectedPhoto
        allAnnounceData.append(AnnounceData)
        print("AnnounceData: \(AnnounceData)")
    }
    
    @State var booleen = false
    @State var buttonbooleen = true
    
    @State var isFieldEmpty = false
       @State var isAccountCreated = false

    
    var body: some View {
        
       
        
        
        NavigationView{
            
            
            
            
            VStack{
                
                
                
                Image("givegood2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                
                Picker("Options", selection: $selectfoodType) {
                    ForEach(0..<foodTypes.count, id: \.self) {
                        Text(foodTypes[$0]).tag($0)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                
                ZStack{
                    Rectangle()
                        .foregroundColor(Color(red: 0.941, green: 0.941, blue: 0.941))
                        .frame(width: 300, height: 50)
                        .cornerRadius(20)
                    
                    
                    
                
                    
                    
                    
                //changer pour mettre la photo
                    PhotosPicker(
                        selection: $selectedPhoto,
                        matching: .images,
                        photoLibrary: .shared()) {
                            Text("Sélectionnes une photo")
                        }
                        .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                }
                
                
                
                
                
                
                
                
                ZStack{
                    Rectangle()
                        .foregroundColor(Color(red: 0.941, green: 0.941, blue: 0.941))
                        .frame(width: 300, height: 50)
                        .cornerRadius(20)
                   
                        TextField("Le titre de votre repas", text: $foodtitle.name)
                        .frame(width: 300)
                    .multilineTextAlignment(.center)
                    .padding(20)
                }
                ZStack{
                    Rectangle()
                        .foregroundColor(Color(red: 0.941, green: 0.941, blue: 0.941))
                        .frame(width: 300, height: 50)
                        .cornerRadius(20)
                    TextField(
                        "Nom Utilisateur",
                        text: $nameutilisateur.name)
                    .frame(width: 300)
                    .multilineTextAlignment(.center)
                    .padding(20)
                }
                
                ZStack{
                    Rectangle()
                        .foregroundColor(Color(red: 0.941, green: 0.941, blue: 0.941))
                        .frame(width: 300, height: 50)
                        .cornerRadius(20)
                    TextField(
                        "Ingrédient",
                        text: $ingrediant.name)
                    .frame(width: 300)
                    .multilineTextAlignment(.center)
                    .padding(20)
                }
                
                
                
                
                
                Picker("Select a paint color", selection: $selectionDiet) {
                    ForEach(foodDiets, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.menu)
    
                
                
                
                
                
                NavigationLink(destination:
                                AnnouncePostedView(), isActive: $booleen){

                    ZStack{
                        Rectangle()
                            .foregroundColor(.green)
                            .frame(width: 130, height: 50)
                            .cornerRadius(20)
                            .multilineTextAlignment(.center)
                            .padding(20)
                        Text("Partager")
                            .foregroundColor(.black)
                       
                    
//
                      
//                        if buttonbooleen == true {
//                            Button("Partages") {
//                                saveAnnounceData()
//                                
//                            }
//                        }
                        
                        
                        
                        
                        
                    }
                }
                
                        
                    //                Vstack englobante et Navigation
                }
            }
            
        .task(id: selectedPhoto) {
             if let image = try? await selectedPhoto?.loadTransferable(type: Image.self){
              imaged.image = image
          }
        }
            //        Fin du code
        }
    }
    

    
    struct AddAnnounce_Previews: PreviewProvider {
        static var previews: some View {
            AddAnnounceView()
                .environmentObject(Foodtitle())
                .environmentObject(Nameutilisateur())
                .environmentObject(Imaged())
                .environmentObject(FoodDiets())
                .environmentObject(Ingrediant())
         
        }
    }
