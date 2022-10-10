//
//  AccountView.swift
//  LP-Besto
//
//  Created by ngom arona on 03/10/2022.
//

import SwiftUI

struct AccountView: View {
    @State var selection: String = "male"
    let genderOptions: [String] = ["male","female"]
    @State var firstName: String=""
    @State var lastName: String=""
    @State var email: String=""
    @State var birthDate = Date()
    @State var togExtra = false
    @State var togFrequent = false
    
    var body: some View {
        
        NavigationView{
            Form{

                Section(header: Text("Personal Info")){
                    Picker(selection: $selection,
                           label: Text("Gender")) {
                        ForEach(genderOptions.indices) {
                            index in Text(genderOptions[index])
                                .tag(genderOptions[index])
                        }
                    }
                           .pickerStyle(.segmented)
                   // test pour la recuperation
                    Text("Your gender : \(selection)")
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    TextField("Email", text: $email)
                    DatePicker("Birthday", selection: $birthDate, displayedComponents: .date)
                    Button("Save changes") {
                        print("changes saved")
                    }
                    .disabled(firstName.isEmpty||lastName.isEmpty||email.isEmpty)


                }
                
                Section(header: Text("REQUEST")){
                    Toggle("Extra Napkins", isOn: $togExtra)
                    Toggle("Frequent Reffils", isOn: $togFrequent)
                }
    
            }
            .navigationTitle("😎 Account")
            
        }
        
        
    }
    
    
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
