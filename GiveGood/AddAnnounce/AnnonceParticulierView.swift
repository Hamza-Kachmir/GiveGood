//
//  AnnonceEntrepriseView.swift
//  GOOD
//
//  Created by elamine heuss on 20/09/2023.
//

import SwiftUI

struct WelcomeView: View {
    @State var userProfilePic = "PH"
    @State var userName = "Sahar"
    @State var foodTitle = ""
    @State var foodDiet = "AVS"
    @State var adresse = "21 chemin de la gloire 31200"
    @State var colorA = (Color(red: 0.556, green: 0.827, blue: 0.623))
    @State var colorB = (Color(red: 0.941, green: 0.941, blue: 0.941))
    @State var localisationLogo = Image(systemName: "location")
    @State var userValidation = Image(systemName:"checkmark.seal.fill")
    //    @EnvironmentObject var tournoi: Tournoi
    //
    @EnvironmentObject var imaged : Imaged
    @EnvironmentObject var foodtitle : Foodtitle
    @EnvironmentObject var nameutilisateur : Nameutilisateur
    
    @State var foodAllergy = "BIO"
    
    
    var body: some View {
        
        
        NavigationStack{
            
            
            NavigationLink(destination:    //page 1   Edwar
                           LocalisationView()
                           
            ) {
                Text(adresse)
                    .fontWeight(.regular)
                Text(localisationLogo)
            }
            
            ScrollView{
                
                VStack{
                    
                    
                    
                    HStack{
                        
                        Text(getCurrentDate())
                            .font(.title2)
                            .fontWeight(.regular)
                            .padding()
                        
                        
                        Spacer()
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    NavigationLink(destination:    //page 1   Edwar
                                   ReservationView()
                                   
                    ) {
                        HStack{//page 1
                            
                            
                            
                            ZStack{
                                
                                
                                Rectangle()
                                    .cornerRadius(20)
                                    .foregroundColor(colorA)
                                    .frame(width:350, height: 110)
                                
                                HStack{
                                    ZStack{
                                        Rectangle()
                                            .frame(width:30, height: 30)
                                            .cornerRadius(40)
                                        
                                        
                                        Image("edwar")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width:60, height: 60)
                                            .cornerRadius(40)
                                            .padding()
                                    }
                                    VStack{
                                        HStack{ // varfood title
                                            Text("Edwar")
                                                .font(.system(size: 20))
                                                .font(.footnote)
                                                .fontWeight(.medium)
                                                .foregroundColor(.black)
                                            
                                            Text(userValidation)
                                            
                                        }
                                        
                                        
                                        
                                        
                                        Text("Msemen")
                                            .font(.system(size:20))
                                            .foregroundColor(.black)
                                        
                                        //                                .font(.footnote)
                                        //

                                        HStack{ // AVS ETC var foodDiet et Var food Allergy
                                            ZStack{
                                                Rectangle()
                                                    .cornerRadius(40)
                                                    .frame(width:50, height: 20)
                                                    .foregroundColor(Color(red: 0.559, green: 0.418, blue: 0.75))
                                                Text(foodDiet)
                                                    .foregroundColor(.black)
                                                    .font(.footnote)
                                                    .fontWeight(.medium)
                                                
                                            }
                                            ZStack{
                                                Rectangle()
                                                    .cornerRadius(40)
                                                    .frame(width:50, height: 20)
                                                    .foregroundColor(Color(red: 0.941, green: 0.941, blue: 0.941))
                                                Text(foodAllergy)
                                                    .foregroundColor(.black)
                                                    .font(.footnote)
                                                    .fontWeight(.medium)
                                            }
                                        }
                                    }
                                    
                                    // var foodPicture
                                    HStack{
                                        
                                        Image("msemen")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 100, height: 100)
                                            .cornerRadius(40)
                                            .padding()
                                    }
                                }
                                
                            }
                            
                            
                            
                            
                        }
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    if nameutilisateur.name != ""{
                        
                        NavigationLink(destination:    //page 1 modifiable
                                       SaharView()
                                       
                        ) {
                            HStack{//page 1
                                
                                
                                
                                ZStack{
                                    
                                    
                                    Rectangle()
                                        .cornerRadius(20)
                                        .foregroundColor(colorA)
                                        .frame(width:350, height: 110)
                                    
                                    HStack{
                                        ZStack{
                                            Rectangle()
                                                .frame(width:30, height: 30)
                                                .cornerRadius(40)
                                            
                                            
                                            Image("memoji")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width:60, height: 60)
                                                .cornerRadius(40)
                                                .padding()
                                        }
                                        VStack{
                                            HStack{ // varfood title
                                                Text(nameutilisateur.name)
                                                    .font(.system(size: 20))
                                                    .font(.footnote)
                                                    .fontWeight(.medium)
                                                    .foregroundColor(.black)
                                                
                                                Text(userValidation)
                                                
                                            }
                                            
                                            
                                            
                                            
                                            Text(foodtitle.name)
                                                .font(.system(size:20))
                                                .foregroundColor(.black)
                                            
                                            //                                .font(.footnote)
                                            //
                                            
                                            HStack{ // AVS ETC var foodDiet et Var food Allergy
                                                ZStack{
                                                    Rectangle()
                                                        .cornerRadius(40)
                                                        .frame(width:50, height: 20)
                                                        .foregroundColor(Color(red: 0.559, green: 0.418, blue: 0.75))
                                                    Text(foodDiet)
                                                        .foregroundColor(.black)
                                                        .font(.footnote)
                                                        .fontWeight(.medium)
                                                    
                                                }
                                                ZStack{
                                                    Rectangle()
                                                        .cornerRadius(40)
                                                        .frame(width:50, height: 20)
                                                        .foregroundColor(Color(red: 0.941, green: 0.941, blue: 0.941))
                                                    Text(foodAllergy)
                                                        .foregroundColor(.black)
                                                        .font(.footnote)
                                                        .fontWeight(.medium)
                                                }
                                            }
                                        }
                                        
                                        // var foodPicture
                                        HStack{
                                            imaged.image
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 100, height: 100)
                                                .cornerRadius(40)
                                                .padding()
                                        }
                                    }
                                    
                                }
                                
                                
                                
                                
                            }
                            
                        }
                        
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                    NavigationLink(destination:    //page 2    a bdellh
                                   ReservationView()
                                   
                    ) {
                        HStack{//page 1
                            
                            
                            
                            ZStack{
                                
                                
                                Rectangle()
                                    .cornerRadius(20)
                                    .foregroundColor(colorA)
                                    .frame(width:350, height: 110)
                                
                                HStack{
                                    ZStack{
                                        Rectangle()
                                            .frame(width:30, height: 30)
                                            .cornerRadius(40)
                                        
                                        
                                        Image("abdellah")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width:60, height: 60)
                                            .cornerRadius(40)
                                            .padding()
                                    }
                                    VStack{
                                        HStack{ // varfood title
                                            Text("abdellah")
                                                .font(.system(size: 20))
                                                .font(.footnote)
                                                .fontWeight(.medium)
                                                .foregroundColor(.black)
                                            
                                            Text(userValidation)
                                            
                                        }
                                        
                                        
                                        
                                        
                                        Text("riz curry")
                                            .font(.system(size:20))
                                            .foregroundColor(.black)
                                        
                                        //                                .font(.footnote)
                                        //
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        HStack{ // AVS ETC var foodDiet et Var food Allergy
                                            ZStack{
                                                Rectangle()
                                                    .cornerRadius(40)
                                                    .frame(width:50, height: 20)
                                                    .foregroundColor(Color(red: 0.559, green: 0.418, blue: 0.75))
                                                Text(foodDiet)
                                                    .foregroundColor(.black)
                                                    .font(.footnote)
                                                    .fontWeight(.medium)
                                                
                                            }
                                            ZStack{
                                                Rectangle()
                                                    .cornerRadius(40)
                                                    .frame(width:50, height: 20)
                                                    .foregroundColor(Color(red: 0.941, green: 0.941, blue: 0.941))
                                                Text(foodAllergy)
                                                    .foregroundColor(.black)
                                                    .font(.footnote)
                                                    .fontWeight(.medium)
                                            }
                                        }
                                    }
                                    
                                    // var foodPicture
                                    HStack{
                                        
                                        Image("rizcurry")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 100, height: 100)
                                            .cornerRadius(40)
                                            .padding()
                                    }
                                }
                                
                            }
                            
                            
                            
                            
                        }
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    NavigationLink(destination:    //page Z
                                   ReservationView()
                                   
                    ) {
                        HStack{//page Z
                            
                            
                            
                            ZStack{
                                
                                
                                Rectangle()
                                    .cornerRadius(20)
                                    .foregroundColor(colorA)
                                    .frame(width:350, height: 110)
                                
                                HStack{
                                    ZStack{
                                        Rectangle()
                                            .frame(width:30, height: 30)
                                            .cornerRadius(40)
                                        
                                        Image("dimitri")
                                     
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width:60, height: 60)
                                            .cornerRadius(40)
                                            .padding()
                                    }
                                    VStack{
                                        HStack{ // varfood title
                                            Text("Dimitri")
                                                .font(.system(size: 20))
                                                .font(.footnote)
                                                .fontWeight(.medium)
                                                .foregroundColor(.black)
                                            
                                            Text(userValidation)
                                            
                                        }
                                        Text("Donut")
                                            .font(.headline)
                                            .fontWeight(.medium)
                                            .foregroundColor(.black)
                                        
                                        //                                .font(.footnote)
                                        //
                                        

                                        
                                        
                                        
                                        HStack{ // AVS ETC var foodDiet et Var food Allergy
                                            ZStack{
                                                Rectangle()
                                                    .cornerRadius(40)
                                                    .frame(width:50, height: 20)
                                                    .foregroundColor(Color(red: 0.559, green: 0.418, blue: 0.75))
                                                Text(foodDiet)
                                                    .foregroundColor(.black)
                                                    .font(.footnote)
                                                    .fontWeight(.medium)
                                                
                                            }
                                            ZStack{
                                                Rectangle()
                                                    .cornerRadius(40)
                                                    .frame(width:50, height: 20)
                                                    .foregroundColor(Color(red: 0.941, green: 0.941, blue: 0.941))
                                                Text(foodAllergy)
                                                    .foregroundColor(.black)
                                                    .font(.footnote)
                                                    .fontWeight(.medium)
                                            }
                                        }
                                    }
                                    
                                    // var foodPicture
                                    HStack{
                                        
                                        
                                        Image("donut")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 100, height: 100)
                                            .cornerRadius(40)
                                            .padding()
                                    }
                                }
                                
                            }
                            
                            
                            
                            
                        }
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    NavigationLink(destination:    //page 2    a bdellh
                                   ReservationView()
                                   
                    ) {
                        HStack{//page 1
                            
                            
                            
                            ZStack{
                                
                                
                                Rectangle()
                                    .cornerRadius(20)
                                    .foregroundColor(colorA)
                                    .frame(width:350, height: 110)
                                
                                HStack{
                                    ZStack{
                                        Rectangle()
                                            .frame(width:30, height: 30)
                                            .cornerRadius(40)
                                        
                                        
                                        Image("abdellah")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width:60, height: 60)
                                            .cornerRadius(40)
                                            .padding()
                                    }
                                    VStack{
                                        HStack{ // varfood title
                                            Text("abdellah")
                                                .font(.system(size: 20))
                                                .font(.footnote)
                                                .fontWeight(.medium)
                                                .foregroundColor(.black)
                                            
                                            Text(userValidation)
                                            
                                        }
                                        
                                        
                                        
                                        
                                        Text("riz curry")
                                            .font(.system(size:20))
                                            .foregroundColor(.black)
                                        
                                        //                                .font(.footnote)
                                        //
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        HStack{ // AVS ETC var foodDiet et Var food Allergy
                                            ZStack{
                                                Rectangle()
                                                    .cornerRadius(40)
                                                    .frame(width:50, height: 20)
                                                    .foregroundColor(Color(red: 0.559, green: 0.418, blue: 0.75))
                                                Text(foodDiet)
                                                    .foregroundColor(.black)
                                                    .font(.footnote)
                                                    .fontWeight(.medium)
                                                
                                            }
                                            ZStack{
                                                Rectangle()
                                                    .cornerRadius(40)
                                                    .frame(width:50, height: 20)
                                                    .foregroundColor(Color(red: 0.941, green: 0.941, blue: 0.941))
                                                Text(foodAllergy)
                                                    .foregroundColor(.black)
                                                    .font(.footnote)
                                                    .fontWeight(.medium)
                                            }
                                        }
                                    }
                                    
                                    // var foodPicture
                                    HStack{
                                        
                                        Image("rizcurry")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 100, height: 100)
                                            .cornerRadius(40)
                                            .padding()
                                    }
                                }
                                
                            }
                            
                            
                            
                            
                        }
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    NavigationLink(destination:    //page 1   Edwar
                                   ReservationView()
                                   
                    ) {
                        HStack{//page 1
                            
                            
                            
                            ZStack{
                                
                                
                                Rectangle()
                                    .cornerRadius(20)
                                    .foregroundColor(colorA)
                                    .frame(width:350, height: 110)
                                
                                HStack{
                                    ZStack{
                                        Rectangle()
                                            .frame(width:30, height: 30)
                                            .cornerRadius(40)
                                        
                                        
                                        Image("edwar")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width:60, height: 60)
                                            .cornerRadius(40)
                                            .padding()
                                    }
                                    VStack{
                                        HStack{ // varfood title
                                            Text("Edwar")
                                                .font(.system(size: 20))
                                                .font(.footnote)
                                                .fontWeight(.medium)
                                                .foregroundColor(.black)
                                            
                                            Text(userValidation)
                                            
                                        }
                                        
                                        
                                        
                                        
                                        Text("Msemen")
                                            .font(.system(size:20))
                                            .foregroundColor(.black)
                                        
                                        //                                .font(.footnote)
                                        //

                                        HStack{ // AVS ETC var foodDiet et Var food Allergy
                                            ZStack{
                                                Rectangle()
                                                    .cornerRadius(40)
                                                    .frame(width:50, height: 20)
                                                    .foregroundColor(Color(red: 0.559, green: 0.418, blue: 0.75))
                                                Text(foodDiet)
                                                    .foregroundColor(.black)
                                                    .font(.footnote)
                                                    .fontWeight(.medium)
                                                
                                            }
                                            ZStack{
                                                Rectangle()
                                                    .cornerRadius(40)
                                                    .frame(width:50, height: 20)
                                                    .foregroundColor(Color(red: 0.941, green: 0.941, blue: 0.941))
                                                Text(foodAllergy)
                                                    .foregroundColor(.black)
                                                    .font(.footnote)
                                                    .fontWeight(.medium)
                                            }
                                        }
                                    }
                                    
                                    // var foodPicture
                                    HStack{
                                        
                                        Image("msemen")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 100, height: 100)
                                            .cornerRadius(40)
                                            .padding()
                                    }
                                }
                                
                            }
                            
                            
                            
                            
                        }
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                    
                }
            }
    }
    
}
                    
                   
struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        
        WelcomeView()
            .environmentObject(Foodtitle())
            .environmentObject(Nameutilisateur())
            .environmentObject(Imaged())
        
    }
}
