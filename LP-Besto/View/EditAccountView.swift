//
//  EditAccountView.swift
//  LP-Besto
//
//  Created by ngom arona on 17/10/2022.
//


import SwiftUI

struct EditAccountView: View {
    @State var firstName: String=""
    @State var lastName: String=""
    @State var email: String=""
    @State var birthDate = Date()

    @State var savedInfos: Bool = false
    @Environment(\.presentationMode) var presentationMode

    
    var body: some View {
        
        
        NavigationView{
            // create form
            Form{
                    TextField("Enter your first name", text: $firstName)
                    .padding()
                    TextField("Enter your last name", text: $lastName)
                    .padding()

                    TextField("Enter your email", text: $email)
                    .padding()
                    

                    
                Button(action: {
                    savedInfos = true
                    LocalStorage.myValueF = self.firstName
                    LocalStorage.myValueL = self.lastName
                    LocalStorage.myValueE = self.email
                    presentationMode.wrappedValue.dismiss()
                    presentationMode.wrappedValue.dismiss()


                }, label: {
                    Text("Update")
                })
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth:.infinity)
                    .background(Color.accentColor)
                    .cornerRadius(10)
                    .disabled(firstName.isEmpty||lastName.isEmpty||email.isEmpty)
                    .alert("✅ Info successfully updated",
                        isPresented: $savedInfos) {
                      }

                }
            .navigationBarTitle("Update info", displayMode: .inline)
            
                
            }
            
            .onAppear(perform: {
                self.firstName = LocalStorage.myValueF
                self.lastName = LocalStorage.myValueL
                self.email = LocalStorage.myValueE


            })
            
        }
    

}

struct EditAccountView_Previews: PreviewProvider {
    static var previews: some View {
        EditAccountView()
    }
}
