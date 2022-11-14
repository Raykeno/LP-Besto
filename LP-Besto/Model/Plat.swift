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
    
    
    // Pour les mockdata il faut mieux utiliser le premier élement, mais aussi le deuxième élement pour voir comment l'application réagit à une image non comforme
    static var mockData = [
        Plat(name: "Asian Flank Steak", contenu: [300, 0, 14], description: "Un steak fin et délicieux, un traditionel en Asie" ,prix: 9.99,rating: 4.8),
        Plat(name: "Steak cuit au Vin Rouge", contenu: [800, 22, 40], description: "Un steak cuit au Vin Rouge, traditionel de la Region" ,prix: 9.99,rating: 4.8),
        Plat(name: "Tenders de Poulets", contenu: [400, 75, 12], description: "Des tenders recette secrete de notre restaurant",  prix: 11.99,rating: 4.6),
        Plat(name: "Purée au Parmesan", contenu: [541, 32, 111], description: "Une purée faite avec amour, un plat très bon pour l'estomac",  prix: 12.99,rating: 4.0),
    ]
    
}

struct Order : Identifiable{
    
    var id = UUID()
    var name : String
    var prix : Float
    
    static var mockData = [
        Order(name: "Steak cuit au Vin Rouge", prix: 9.99),
    ]
}

/**
"price": 8.99,
"protein": 14,
"id": 1,
"description": "This perfectly thin cut just melts in your mouth.",
"name": "Asian Flank Steak",
"imageURL":
"calories": 300,
"carbs": 0
**/
