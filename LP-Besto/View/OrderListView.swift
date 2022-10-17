//
//  OrderListView.swift
//  LP-Besto
//
//  Created by megat megat salman shukri on 17/10/2022.
//

import SwiftUI

struct OrderListView: View {
    
    @EnvironmentObject var platVM: PlatViewModel
    
    var body: some View {
        NavigationView{
            
            List{
                ForEach(platVM.orders){
                    order in OrderPlatView(order: order)
                }
            }
            .navigationTitle("Orders")
            .listStyle(PlainListStyle())
        }
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView()
            .environmentObject(PlatViewModel())
    }
}
