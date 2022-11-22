//
//  addPlatToPlats.swift
//  LP-Besto
//
//  Created by hajdu otto on 22/11/2022.
//

import SwiftUI

struct AddPlatToPlats: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State var platTitle : String = ""
    @State var platPrice: String = ""
    @State var platRating: Float = 0.0
    @State var platDescription: String = ""
    @State var platCalories: Int = 0
    @State var platCarbs: Int = 0
    @State var platProtein: Int = 0
    
    @State var showAlert: Bool = false
    
    
    @EnvironmentObject var platVM : PlatViewModel
    
    
    var body: some View {
        VStack(spacing: 30){
            TextField("Enter the name of the dish", text: $platTitle)
                .padding(.horizontal)
                .frame(height: 55)
                .background(Color(.systemGray5))
                .cornerRadius(10)
            
            
            TextField("Enter a nice description", text: $platDescription)
                .padding(.horizontal)
                .frame(height: 55)
                .background(Color(.systemGray5))
                .cornerRadius(10)
            
            // Priorities
            
            .pickerStyle(SegmentedPickerStyle())
            Spacer()
            
            // Save Button
            
            Button {
                saveButtonPressed()
                
            } label: {
                Text("Make a new dish! 🫕")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                    .background(Color.accentColor)
                    .font(.headline)
                    .cornerRadius(10)
                    .padding(.bottom)
            }
        
        }
        .padding(14)
        .navigationTitle(" 🥗 Add Plat")
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Your todo must be at least 3 characters long 😎"))
        }

    }
    
    func saveButtonPressed() {
        if platTitle.count < 3 { // Moins de 3 caractères
            showAlert = true
        } else {
            platVM.addPlat(name: platTitle, contenu: [0,0,0], description: "test", prix: 12.0, rating: 3.0)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
}

struct addPlatToPlats_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddPlatToPlats()
        }
    }
}
