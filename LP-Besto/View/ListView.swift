//
//  ListView.swift
//  LP-Besto
//
//  Created by megat megat salman shukri on 03/10/2022.
//

import SwiftUI


//View pour Home

struct ListView: View {
    
    @EnvironmentObject var platVM: PlatViewModel
    
    var body: some View {
        
        NavigationView{
            
            
            
            List{
                ForEach(platVM.plats){
                    plat in PlatView(plat: plat)
                }
                .onTapGesture {
                    
                }
            }
            .navigationTitle("🍟 Appetizers")
            .listStyle(PlainListStyle())
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
            .environmentObject(PlatViewModel())
    }
}
