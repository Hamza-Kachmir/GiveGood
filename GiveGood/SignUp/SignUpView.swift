//
//  ContentView.swift
//  Ratatouille
//
//  Created by Hamza  on 20/09/2023.
//

import SwiftUI
import PhotosUI

struct SignUpView: View {
    @State var formData: [String: Any] = [:]
    @State var allFormData: [[String: Any]] = []
    @State var id = UUID()
    @State var selectUserType = 0
    @State var userEmail = ""
    @State var userFirstName = ""
    @State var userLastName = ""
    @State var structureName = ""
    @State var numberPhone = ""
    @State var siret = ""
    @State var selectedPhotos: [PhotosPickerItem] = []
    @State var birthDate = Date()
    @State var selectDiet = Set<String>()
    @State var isFieldEmpty = false
    @State var isAccountCreated = false

    
    @State var showTabView = false
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Image("logoplain")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                        .padding(.bottom, 20)
                    Text("L'application pour aider les personnes dans le besoin alimentaire tout en évitant le gaspillage !")
                        .bold()
                        .padding(.bottom, 20)
                    Picker("Options", selection: $selectUserType) {
                        ForEach(0..<userTypes.count, id: \.self) {
                            Text(userTypes[$0]).tag($0)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                    PhotosPicker(selection: $selectedPhotos,
                                  maxSelectionCount: 1,
                                  matching: .images) {
                        Text("Ajouter")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                    }

                    if selectUserType == 0 {
                        CustomTextField("Nom *", text: $userLastName, isFieldEmpty: isFieldEmpty)
                        CustomTextField("Prénom *", text: $userFirstName, isFieldEmpty: isFieldEmpty)
                        CustomTextField("Email *", text: $userEmail, isFieldEmpty: isFieldEmpty)
                        CustomTextField("Numéro de téléphone *", text: $numberPhone, isFieldEmpty: isFieldEmpty)
                        DatePicker("Date de Naissance *", selection: $birthDate, displayedComponents: .date)
                            .padding(.bottom, 50)
                        Text("Régime alimentaire")
                            .padding(.bottom, 10)
                        VStack {
                            ForEach(userDiets, id: \.self) { diet in
                                Toggle(diet, isOn: Binding(
                                    get: { self.selectDiet.contains(diet) },
                                    set: { newValue in
                                        if newValue {
                                            self.selectDiet.insert(diet)
                                        } else {
                                            self.selectDiet.remove(diet)
                                        }
                                    }
                                ))
                            }
                        }
                    } else if selectUserType == 1 {
                        CustomTextField("Nom de la Structure *", text: $structureName, isFieldEmpty: isFieldEmpty)
                        CustomTextField("SIRET *", text: $siret, isFieldEmpty: isFieldEmpty)
                        CustomTextField("Email *", text: $userEmail, isFieldEmpty: isFieldEmpty)
                        CustomTextField("Numéro de téléphone *", text: $numberPhone, isFieldEmpty: isFieldEmpty)
                    }
                    Button(action: {
                        isFieldEmpty = !StructuresApp.areFieldsValid(selectUserType: selectUserType, userEmail: userEmail, userFirstName: userFirstName, userLastName: userLastName, structureName: structureName, siret: siret, numberPhone: numberPhone)
                        if !isFieldEmpty {
                            formData = StructuresApp.saveFormData(id: id, selectUserType: selectUserType, userEmail: userEmail, userFirstName: userFirstName, userLastName: userLastName, structureName: structureName, numberPhone: numberPhone, siret: siret, birthDate: birthDate, selectDiet: selectDiet, allFormData: &allFormData)
                            isAccountCreated = true
                        }
                    }) {
                        Text("Creer")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(8)
                    }
                    .padding(.bottom, 50)

                    NavigationLink("", destination: AccountCreatedView(selectUserType: $selectUserType, firstName: $userFirstName, structureName: $structureName).navigationBarBackButtonHidden(true), isActive: $isAccountCreated)
                        .hidden()
                    if isFieldEmpty {
                        Text("Veuillez compléter les champs de saisie.")
                            .foregroundColor(.red)
                            .padding(.bottom)
                    }
                    Button{
                        showTabView = true
                    } label : {
                        Text("Ignorer cette étape")
                    }
                }
                .padding()
            }
            .fullScreenCover(isPresented: $showTabView){
                TabViewView()
            }
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
            .environmentObject(Foodtitle())
            .environmentObject(Nameutilisateur())
            .environmentObject(Imaged())
            .environmentObject(Ingrediant())
    }
}
















