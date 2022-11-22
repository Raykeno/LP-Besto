//
//  LP_BestoApp.swift
//  LP-Besto
//
//  Created by hajdu otto on 03/10/2022.
//

import SwiftUI

@main
struct LP_BestoApp: App {
    var body: some Scene {
        WindowGroup {
                OurTabItemView()
                .environmentObject(PlatViewModel())
        }
    }
}
