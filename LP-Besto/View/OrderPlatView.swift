//
//  OrderPlatView.swift
//  LP-Besto
//
//  Created by megat megat salman shukri on 17/10/2022.
//

import SwiftUI

struct OrderPlatView: View {
    
    let order: Order
    
    var body: some View {
        
        HStack{
            Image(order.name)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 64, height: 64)
                .cornerRadius(10)
            VStack(alignment: .leading,spacing:5){
                Text(order.name)
                    .font(.system(size: 20,weight:.medium))
                    .lineLimit(1)
                    .truncationMode(.tail)
                Text(" \(order.prix, specifier: "%.2f")€")
                    .font(.system(size: 16 ,weight:.bold))
                    .foregroundColor(Color(.black))
        

            }
            .padding(.horizontal)
            
            Spacer()
        }
        .padding(.vertical, 10)
        .font(.title2)
    }
}

struct OrderPlatView_Previews: PreviewProvider {
    static var previews: some View {
        OrderPlatView(order: Order.mockData[0])
            .previewLayout(.sizeThatFits)
    }
}
