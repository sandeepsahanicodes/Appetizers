//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Sandeep Sahani on 29/04/25.
//

import SwiftUI

@main
struct AppetizersApp: App {
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView()
                .environmentObject(order)
        }
    }
}
