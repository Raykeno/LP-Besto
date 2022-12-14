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
    @State var today = Date()


    
    var body: some View {
        
        
        NavigationView{
            Form{
                    Text("Today is \(today.formatted(date: .long, time: .omitted))")
                    .padding()
                    .foregroundColor(.gray)
                    Text("Your name : \(firstName)")
                    .padding()
                    .foregroundColor(.brown)
                    Text("Your surname : \(lastName)")
                    .padding()
                    .foregroundColor(.brown)
                    Text("Your email : \(email)")
                    .padding()
                    .foregroundColor(.brown)
                    



                }
            .navigationBarTitle("Welcome \(LocalStorage.myValueF) 👋🏼", displayMode: .inline)
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
