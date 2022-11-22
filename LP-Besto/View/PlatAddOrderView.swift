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
        
        NavigationView {
            VStack {
                ZStack{
                    /*
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.accentColor)
                        .ignoresSafeArea()
                        .shadow(color: .black, radius: 4, x: 1, y: 1)
                        .frame(minWidth: 0,
                               maxWidth: .infinity,
                               minHeight: 0,
                               maxHeight: 100,
                               alignment: .top)
                     */
                        
                    Image(plat.name)
                        .resizable()
                        .frame(width: 256, height: 256)
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                        .shadow(color: .black, radius: 2, x: 0, y: 0)
                }
                
                Spacer()
                
                Text(plat.name)
                    .font(.title)

                HStack {
                    ZStack(alignment: .leading){
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.gray)
                            .frame(width: 70, height: 30)
                            .padding(4)
                            .shadow(color: .black, radius: 2, x: 0, y: 0)

                    
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .fill(Color.accentColor)
                            .frame(width: platVM.ratingGetProgress(rating: plat.rating), height: 30)
                            .padding(4)
                            
                        
                        Text("\(plat.rating, specifier: "%.1f") ⭐️")
                            .font(.system(size: 16 ,weight:.bold))
                            .foregroundColor(Color.white)
                            .offset(x:16)
                    }
                    
                    Text(" \(plat.prix)" + " €")
                        .font(.system(size: 26))
                        .bold()
                    }
                Spacer()
                HStack {
                    VStack {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.orange)
                                .shadow(color: .black, radius: 2, x: 1, y: 1)
                                .frame(width: 200, height: 30)
                            Text("⚡️ Calories : \(plat.contenu[0])") // Ne pas dépasser 4 chiffres!!
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.yellow)
                                .shadow(color: .black, radius: 2, x: 1, y: 1)
                                .frame(width: 200, height: 30)
                            Text("🍰 Carbs : \(plat.contenu[1])")
                        }
                            
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.red)
                                .shadow(color: .black, radius: 2, x: 1, y: 1)
                                .frame(width: 200, height: 30)
                        Text("🥩 Protein : \(plat.contenu[2])")
                        }
                    }
                    .frame(width: 160, height: 160)
                    .padding()

                    Text(" \" " + plat.description + " \" ")
                        .italic()
                        .frame(width: 160, height: 160)
                        .padding()
                }
                
                Button {
                    platVM.addOrder(name: plat.name, prix: plat.prix)
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Commander el Plat - \(plat.prix, specifier: "%.2f")€")
                        .frame(height: 48)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .background(Color.accentColor)
                        .font(.headline)
                        .cornerRadius(10)
                        .shadow(color: .black, radius: 2, x: 0, y: 0)
                        
                }.padding(.bottom, 100)
                Spacer()
            }
            
            
        }.navigationBarTitle(" 🫕 Commande du Plat")
    }
}

struct PlatAddOrderView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PlatAddOrderView(plat: Plat.mockData[2])
                .environmentObject(PlatViewModel())
        }
    }
}
