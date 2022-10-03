//
//  Plat.swift
//  LP-Besto
//
//  Created by hajdu otto on 03/10/2022.
//

import Foundation

// Un plat a un nom, le "contenu" alimentaire, un prix

struct Plat : Identifiable {
    
    var id = UUID()
    var name : String
    var contenu : [Int] // Calories, Carbs, Proteins
    var description : String
    var prix : Int
    
    static var mockData = [
        Plat(name: "Steak cuit au Vin Rouge", contenu: [800, 22, 40], description: "Un steak cuit au Vin Rouge, traditionel de la Region" ,prix: 10),
        Plat(name: "Tenders de Poulets", contenu: [400, 75, 12], description: "Des tenders recette secrete de notre restaurant",  prix: 12),
        Plat(name: "Purée au Parmesan", contenu: [541, 32, 111], description: "Une purée faite avec amour, un plat très bon pour l'estomac",  prix: 41),
    ]
    
}
