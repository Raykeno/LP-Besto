//
//  OurTabItemView.swift
//  LP-Besto
//
//  Created by ngom arona on 03/10/2022.
//

import SwiftUI

struct OurTabView: View {
    var body: some View {
             TabView{
                 ListView()
                     .tabItem {
                         Image(systemName: "homekit")
                         Text("Home")
                     }
                 AccountView()
                     .tabItem {
                         Image(systemName: "person")
                         Text("Account")
                     }
                 
             }
    }
}

struct OurTabView_Previews: PreviewProvider {
    static var previews: some View {
        OurTabView()
    }
}
