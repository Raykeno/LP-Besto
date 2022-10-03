//
//  PlatViewModel.swift
//  LP-Besto
//
//  Created by hajdu otto on 03/10/2022.
//

import SwiftUI

// ViewModel de Plat pour les utiliser dans les View

class PlatViewModel: ObservableObject {
    
    @Published var plats : [Plat] = []
    
    init() {
        getPlats()
    }
    
    func getPlats() {
        plats.append(contentsOf: Plat.mockData)
    }
    
    func addPlat(name: String, contenu: [Int], prix: Int) {
        let newPlat = Plat(name: name, contenu: contenu, prix: prix)
        plats.append(newPlat)
    }
    
    func deletePlat(indexSet: IndexSet) {
        plats.remove(atOffsets: indexSet)
    }
    
    func movePlat(from: IndexSet, to: Int) {
        plats.move(fromOffsets: from, toOffset: to)
    }
    
    
}