//
//  OurTabItemView.swift
//  LP-Besto
//
//  Created by ngom arona on 03/10/2022.
//

import SwiftUI

struct OurTabItemView: View {
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
                 //make so that if order[] is empty, orderlistview shows "please choose a meal"
                 OrderListView()
                     .tabItem {
                         Image(systemName: "bag")
                         Text("Order")
                     }
             }
    }
}

struct OurTabItemView_Previews: PreviewProvider {
    static var previews: some View {
        OurTabItemView()
            .environmentObject(PlatViewModel())
    }
}
