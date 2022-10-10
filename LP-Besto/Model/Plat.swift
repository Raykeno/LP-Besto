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
    var prix : Float
    var rating : Float
    
    static var mockData = [
        Plat(name: "Steak cuit au Vin Rouge", contenu: [800, 22, 40], description: "Un steak cuit au Vin Rouge, traditionel de la Region" ,prix: 9.99,rating: 4.8),
        Plat(name: "Tenders de Poulets", contenu: [400, 75, 12], description: "Des tenders recette secrete de notre restaurant",  prix: 11.99,rating: 4.6),
        Plat(name: "Purée au Parmesan", contenu: [541, 32, 111], description: "Une purée faite avec amour, un plat très bon pour l'estomac",  prix: 12.99,rating: 4.0),
    ]
    
}
