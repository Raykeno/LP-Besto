//
//  AccountView.swift
//  LP-Besto
//
//  Created by ngom arona on 03/10/2022.
//

import SwiftUI

struct AccountView: View {
    //declare variables
    
    @State var selection: String = "🧔‍♂️"
    let genderOptions: [String] = ["🧔‍♂️","👩‍🦰"]
    @State var firstName: String=""
    @State var lastName: String=""
    @State var email: String=""
    @State var birthDate = Date()
    @State var togExtra = false
    @State var togFrequent = false
    @State private var savedInfos: Bool = false

    
    var body: some View {
        
        NavigationView{
            // create form
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
                   // recup the  value
                    Text("Your gender  : \(selection)")
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    TextField("Email", text: $email)
                    DatePicker("Birthday", selection: $birthDate, displayedComponents: .date)
                    Button("Save changes") {
                        savedInfos = true
                    }
                    .disabled(firstName.isEmpty||lastName.isEmpty||email.isEmpty)
                    .alert("✅ Info successfully saved",
                        isPresented: $savedInfos) {
                      }


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
