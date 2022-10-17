//
//  PlatView.swift
//  LP-Besto
//
//  Created by megat megat salman shukri on 03/10/2022.
//

import SwiftUI

struct PlatView: View {
    
    let plat : Plat
    
    var body: some View {
        
        HStack{
            Image(plat.name)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 64, height: 64)
                .cornerRadius(10)
            VStack(alignment: .leading,spacing:5){
                Text(plat.name)
                    .font(.system(size: 20,weight:.medium))
                    .lineLimit(1)
                    .truncationMode(.tail)
                HStack{
                    Text(" \(plat.prix, specifier: "%.2f")€")
                        .font(.system(size: 16 ,weight:.bold))
                        .foregroundColor(Color(.black))
                    Spacer()
                    Text("\(plat.rating, specifier: "%.1f")⭐️")
                        .font(.system(size: 16 ,weight:.bold))
                        .foregroundColor(Color(.systemGray2))
                }

            }
            .padding(.horizontal)
            
            Spacer()
        }
        .padding(.vertical, 10)
        .font(.title2)
    }
}

struct PlatView_Previews: PreviewProvider {
    static var previews: some View {
        PlatView(plat: Plat.mockData[0])
            .previewLayout(.sizeThatFits)
    }
}
