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
    @State var savedInfos: Bool = false
    @Environment(\.presentationMode) var presentationMode
   
    var disableForm: Bool {
        firstName.count < 2 || lastName.count < 2 || email.count < 3
    }
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

                    Text("Your gender  : \(selection)")
                    HStack { Image(systemName: "person") .foregroundColor(.gray).font(.headline)
                        TextField("First Name", text: $firstName)}
                    HStack { Image(systemName: "person") .foregroundColor(.gray).font(.headline)
                        TextField("Last Name", text: $lastName)}
                    HStack { Image(systemName: "envelope") .foregroundColor(.gray).font(.headline)
                        TextField("Email", text: $email)}
                        .autocapitalization(.none)
                    DatePicker(selection: $birthDate, in: ...Date(), displayedComponents: .date) {
                                   Text("Select your birthday")
                    }
                    

                }
                
                Section{
                    Button("Save changes") {
                        savedInfos = true
                        LocalStorage.myValueF = self.firstName
                        LocalStorage.myValueL = self.lastName
                        LocalStorage.myValueE = self.email
                    }
                    .disabled(disableForm)
                    .alert("✅ Info successfully saved",
                        isPresented: $savedInfos) {
                      }
                }
            
                Section(header: Text("REQUEST")){
                    Toggle("Extra Napkins", isOn: $togExtra)
                   /* if(togExtra){
                        Text("Chicken")
                            .padding()
                            .foregroundColor(.gray)
                        Text("Fish")
                            .padding()
                            .foregroundColor(.gray)
                        Text("Apple")
                            .padding()
                            .foregroundColor(.gray)
                    }*/
                    Toggle("Frequent Refills", isOn: $togFrequent)
                    /* if(togFrequent){
                        Text("Chicken Wings")
                            .padding()
                            .foregroundColor(.gray)
                        Text("Chicken Fingers")
                            .padding()
                            .foregroundColor(.gray)
                        Text("Chicken Dumplings")
                            .padding()
                            .foregroundColor(.gray)
                    }*/
                }
    
            }
            .navigationTitle("😎 Account")
            .navigationBarItems(
                trailing: NavigationLink(destination: SeeInfoView(), label: {
                    Image(systemName: "eye.fill")
                })
            )
            
        }
        
        
    }
    
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
