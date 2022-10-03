//
//  PlatAddOrderView.swift
//  LP-Besto
//
//  Created by hajdu otto on 03/10/2022.
//

import SwiftUI

// View pour ajouter un plat dans la commande

struct PlatAddOrderView: View {
    var body: some View {
        VStack {
            Image("SteakTestExemple")
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 250)
            Text("Nom du Plat")
                .font(.title)
            Spacer()
            HStack {
                VStack {
                    Text("⚡️ Calories : 2500") // Ne pas dépasser 4 chiffres!!
                        .padding(.bottom)
                    Text("🍰 Carbs : 25000")
                        .padding(.bottom)
                    Text("🥩 Protein : 25000")
                }
                .frame(width: 150, height: 150)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 10).stroke(Color.accentColor, lineWidth: 0.75)
                )
                Text("Ceci est la description du plat, ce plat est connu pour être un plat, en tout cas ce plat n'est pas super interessant sachant")
                .frame(width: 150, height: 150)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 10).stroke(Color.accentColor, lineWidth: 0.75)
                )
                
            }
            Spacer()
            Button {
                
            } label: {
                Text("Commander le Plat - prix")
                    .frame(height: 100)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                    .background(Color.accentColor)
                    .font(.headline)
                    .cornerRadius(10)
            }
        }
        .navigationTitle(" 🫕 Commande du Plat")
    }
}

struct PlatAddOrderView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PlatAddOrderView()
        }
    }
}
