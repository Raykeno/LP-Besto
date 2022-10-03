//
//  PlatView.swift
//  LP-Besto
//
//  Created by megat megat salman shukri on 03/10/2022.
//

import SwiftUI

struct PlatView: View {
    var body: some View {
        
        HStack{
            Image("test")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 64, height: 64)
                .cornerRadius(10)
            VStack(alignment: .leading,spacing:5){
                Text("Asian Flank Steak")
                    .font(.system(size: 24,weight:.medium))
                Text("8.99")
                    .font(.system(size: 16 ,weight:.bold))
                    .foregroundColor(Color(.systemGray))
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
        PlatView()
            .previewLayout(.sizeThatFits)
    }
}
