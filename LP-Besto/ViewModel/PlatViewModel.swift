//
//  PlatViewModel.swift
//  LP-Besto
//
//  Created by hajdu otto on 03/10/2022.
//

import SwiftUI

// ViewModel de Plat pour les utiliser dans les View
// Les fonctions add, move, et delete seront utilisés pour gérer les commandes/order

class PlatViewModel: ObservableObject {
    
    @Published var plats : [Plat] = []
    @Published var orders : [Order] = []
    
    init() {
        // getMockPlats()
        getPlats()
    }
    
    func getMockPlats() {
        plats.append(contentsOf: Plat.mockData)
    }
    
    func addPlat(name: String, contenu: [Int], description: String, prix: Float, rating: Float) {
        let newPlat = Plat(name: name, contenu: contenu, description: description, prix: prix, rating: rating)
        plats.append(newPlat)
    }
    
    func deletePlat(indexSet: IndexSet) {
        plats.remove(atOffsets: indexSet)
    }
    
    func deleteOrder(indexSet: IndexSet) {
        orders.remove(atOffsets: indexSet)
    }
    
    func movePlat(from: IndexSet, to: Int) {
        plats.move(fromOffsets: from, toOffset: to)
    }
    
    func addOrder(name: String, prix: Float){
        let newPlat = Order( name: name, prix: prix)
        orders.append(newPlat)
    }
    
    func getPlats() {
        if let url = Bundle.main.url(forResource: "data", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let json = try? JSONSerialization.jsonObject(with: data, options: [])
                if let dictionary = json as? [String: Any] {
                    if let nestedDictionary = dictionary["request"] as? [Any] {
                        for tab in nestedDictionary {
                            let idDictionary = (tab as! [NSString:NSNumber])["id"]
                            let caloriesDictionary = (tab as! [NSString:NSNumber])["calories"]
                            let proteinsDictionary = (tab as! [NSString:NSNumber])["protein"]
                            let carbsDictionary = (tab as! [NSString:NSNumber])["carbs"]
                            let priceDictionary = (tab as! [NSString:NSNumber])["price"]
                            
                            let nameDictionary = (tab as! [NSString:NSString])["name"]
                            let descriptionDictionary = (tab as! [NSString:NSString])["description"]
                            let imgURLDictionary = (tab as! [NSString:NSString])["imageURL"]
                            
                            
                            let myName: String = nameDictionary! as String
                            let myDescription: String = descriptionDictionary! as String
                            let myImgURL: String = imgURLDictionary! as String
                            let myPrice: Float = priceDictionary!.floatValue
                            let myId: Int = idDictionary!.intValue
                            let myCalories: Int = caloriesDictionary!.intValue
                            let myCarbs: Int = carbsDictionary!.intValue
                            let myProteins: Int = proteinsDictionary!.intValue
                            
                            plats.append(Plat(name: myName, contenu: [myCalories, myCarbs, myProteins], description: myDescription, prix: myPrice, rating: 1.0))
                        }
                        
                        }
                }
            } catch {
                print("error:\(error)")
            }
        }
    }
    
    /*
    func decodedToNormal(jsonData: Data) {
        
        let decodedPlats: [decodedPlat] = try! JSONDecoder().decode([decodedPlat].self, from: jsonData )
        
        for decodedPlat in decodedPlats {
            plats.append(Plat(
                              name: decodedPlat.name,
                              contenu: [decodedPlat.calories, decodedPlat.carbs, decodedPlat.protein],
                              description: decodedPlat.description,
                              prix: decodedPlat.price))
        }
        
    }
    
    private func readLocalFile(forName name: String) -> Data? {
        do {
            if let bundlePath = Bundle.main.path(forResource: "data",
                                                 ofType: "json"),
                let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                return jsonData
            }
        } catch {
            print(error)
        }
        
        return nil
    }
     */
    
}
