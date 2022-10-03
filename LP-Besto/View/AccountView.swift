//
//  AccountView.swift
//  LP-Besto
//
//  Created by ngom arona on 03/10/2022.
//

import SwiftUI

struct AccountView: View {
    
    @State var firstName: String=""
    @State var lastName: String=""
    @State var email: String=""
    @State var birthDate = Date()
    @State var togExtra = false
    @State var togFrequent = false
    
    var body: some View {
        
        NavigationView{
            
            Form{
                Section(header: Text("Personnal Info")){
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    TextField("Email", text: $email)
                    DatePicker("Birthday", selection: $birthDate, displayedComponents: .date)

                }
                
                Section(header: Text("REQUEST")){
                    Toggle("Extra Napkins", isOn: $togExtra)
                    Toggle("Frequent Reffils", isOn: $togFrequent)
                }
                
           /*     TabView{
                    AccountView()
                        .tabItem {
                            Image(systemName: "homekit")
                            Text("Home")
                        }
                    AccountView()
                        .tabItem {
                            Image(systemName: "person")
                            Text("Account")
                        }
                    AccountView()
                        .tabItem {
                            Image(systemName: "homekit")
                            Text("home")
                        }
                }*/

    
            }
            .navigationTitle("😎Account")
            
        }
        
        
    }
    
    
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
