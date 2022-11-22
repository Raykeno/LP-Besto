//
//  OurTabItemView.swift
//  LP-Besto
//
//  Created by ngom arona on 03/10/2022.
//

import SwiftUI

struct OurTabItemView: View {
    @State private var selectedTab = "Home"
    
    var body: some View {
             //TabView{
                // ListView()
                     //.tabItem {
                       //  Image(systemName: "homekit")
                     //    Text("Home")
                   //  }
                 //AccountView()
                  //   .tabItem {
                       //  Image(systemName: "person")
                     //  }
                 //OrderListView()
                     //.tabItem {
                   //      Image(systemName: "bag")
                 //        Text("Order")
               //      }
             //}
        TabView(selection: $selectedTab) {
                    ListView()
                        .tabItem {
                            Label("Home", systemImage: "homekit")
                        }
                        .tag("Home")

                    AccountView()
                        .tabItem {
                            Label("Account", systemImage: "person")
                        }
                        .tag("Account")
            
                    OrderListView(selectedTab: $selectedTab)
                        .tabItem {
                            Label("Order", systemImage: "bag")
                        }
                        .tag("Order")
                }

    }
}

struct OurTabItemView_Previews: PreviewProvider {
    static var previews: some View {
        OurTabItemView()
            .environmentObject(PlatViewModel())
    }
}
