//
//  PlatAddOrderView.swift
//  LP-Besto
//
//  Created by hajdu otto on 03/10/2022.
//

import SwiftUI

// View pour ajouter un plat dans la commande



struct PlatAddOrderView: View {
    
    let plat : Plat
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var platVM : PlatViewModel
    
    var body: some View {
        VStack {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.accentColor)
                    .frame(height: 350)
                    .ignoresSafeArea()
                    
                Image("Steak cuit au Vin Rouge")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 256, height: 256)
                    .padding(.bottom, 50)
                    
            }
            
            
            Text(plat.name)
                .font(.title)
            HStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.accentColor)
                    .frame(width: 70, height: 30)
                    .padding(4)
                    .overlay(
                        Text("\(plat.rating, specifier: "%.1f") ⭐️")
                            .font(.system(size: 16 ,weight:.bold))
                            .foregroundColor(Color.black)
                    )
                Text(" \(plat.prix)" + " €")
                    .font(.system(size: 26))
                    .bold()
                }
            Spacer()
            HStack {
                VStack {
                    Text("⚡️ Calories : \(plat.contenu[0])") // Ne pas dépasser 4 chiffres!!
                        .padding(.bottom)
                    Text("🍰 Carbs : \(plat.contenu[1])")
                        .padding(.bottom)
                    Text("🥩 Protein : \(plat.contenu[2])")
                }
                .frame(width: 160, height: 160)
                .padding()

                Text(" \" " + plat.description + " \" ")
                    .italic()
                    .frame(width: 160, height: 160)
                    .padding()
            }
            Spacer()
            Button {
                platVM.addOrder(name: plat.name, prix: plat.prix)
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Commander le Plat - \(plat.prix, specifier: "%.2f")€")
                    .frame(height: 48)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                    .background(Color.accentColor)
                    .font(.headline)
                    .cornerRadius(10)
            }.padding()
        }
        .navigationTitle(" 🫕 Commande du Plat")
    }
}

struct PlatAddOrderView_Previews: PreviewProvider {
    static var previews: some View {
        PlatAddOrderView(plat: Plat.mockData[0])
            .environmentObject(PlatViewModel())
    }
}
