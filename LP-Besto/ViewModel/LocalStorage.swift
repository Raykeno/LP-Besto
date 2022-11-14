//
//  LocalStorage.swift
//  LP-Besto
//
//  Created by ngom arona on 17/10/2022.
//

import Foundation

class LocalStorage {
     
    public static var myValueF: String {
        set {
            UserDefaults.standard.set(newValue, forKey: "firstN")
        }
        get {
            return UserDefaults.standard.string(forKey: "firstN") ?? ""
        }
    }
    
    public static var myValueL: String {
        set {
            UserDefaults.standard.set(newValue, forKey: "lastN")
        }
        get {
            return UserDefaults.standard.string(forKey: "lastN") ?? ""
        }
    }
    
    public static var myValueE: String {
        set {
            UserDefaults.standard.set(newValue, forKey: "email")
        }
        get {
            return UserDefaults.standard.string(forKey: "email") ?? ""
        }
    }
    
    public static var myValueB: String {
        set {
            UserDefaults.standard.set(newValue, forKey: "birth")
        }
        get {
            return UserDefaults.standard.string(forKey: "birth") ?? ""
        }
    }

    
}
