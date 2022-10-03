//
//  ListView.swift
//  LP-Besto
//
//  Created by megat megat salman shukri on 03/10/2022.
//

import SwiftUI


//View pour Home

struct ListView: View {
    var body: some View {
        
        NavigationView{
            
            
            
            List{
                PlatView()
                PlatView()
                PlatView()
            }
            .navigationTitle("🍟 Appetizers")
            .listStyle(PlainListStyle())
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
