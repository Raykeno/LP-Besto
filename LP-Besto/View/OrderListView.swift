//
//  OrderListView.swift
//  LP-Besto
//
//  Created by megat megat salman shukri on 17/10/2022.
//

import SwiftUI

struct OrderListView: View {
    
    @EnvironmentObject var platVM: PlatViewModel
    @State private var showingAlert = false
    
    var body: some View {
        NavigationView{
            VStack{
                if platVM.orders.isEmpty {
                    Text("Please order!")
                        .padding(.bottom,100)
                }else{
                    List{
                        ForEach(platVM.orders){
                            order in OrderPlatView(order: order)
                        }
                        .onDelete(perform: platVM.deleteOrder)
                    }
                    .navigationTitle("Orders")
                    .listStyle(PlainListStyle())
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading){
                            EditButton()
                        }
                    }
                    Button{
                        platVM.orders.removeAll()
                        showingAlert = true
                        
                    } label: {
                        Text("Place order - \(platVM.getTotal(), specifier: "%.2f")€")
                            .frame(height: 48)
                            .frame(maxWidth: 180)
                            .foregroundColor(.white)
                            .background(Color.accentColor)
                            .font(.headline)
                            .cornerRadius(10)
                    }
                }
            }
            .alert(isPresented: $showingAlert) {
                            Alert(title: Text("Your order is complete"),
                                  dismissButton: Alert.Button.default(
                                    Text("Back to menu"), action: {
                                        
                                    }
                                  )
                            )
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
