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
                .onDelete(perform: platVM.deleteOrder)
            }
            .navigationTitle("Orders")
            .listStyle(PlainListStyle())
            .toolbar {
                //make so that if order[] is empty, toolbar doesn't exist
                ToolbarItem(placement: .navigationBarLeading){
                    EditButton()
                }
            }
            
            
            
        }
        
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        
        OrderListView()
            .environmentObject(PlatViewModel())
    }
}
