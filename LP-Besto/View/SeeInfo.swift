//
//  SeeInfo.swift
//  LP-Besto
//
//  Created by ngom arona on 17/10/2022.
//

import SwiftUI

struct SeeInfoView: View {
    @State var firstName: String=""
    @State var lastName: String=""
    @State var email: String=""

    
    var body: some View {
        
        
        NavigationView{
            Form{
                    TextField("", text: $firstName)
                    .padding()
                    TextField("", text: $lastName)
                    .padding()
                    TextField("", text: $email)
                    .padding()

                }

            .navigationBarTitle("My info 🙋🏻", displayMode: .inline)
            }
            
            .onAppear(perform: {
                self.firstName = LocalStorage.myValueF
                self.lastName = LocalStorage.myValueL
                self.email = LocalStorage.myValueE

            })
            
        }
    

}

struct SeeInfoView_Previews: PreviewProvider {
    static var previews: some View {
        SeeInfoView()
    }
}
