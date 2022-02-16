//
//  TinderUIApp.swift
//  TinderUI
//
//  Created by Gustavo Malheiros on 15/02/22.
//

import SwiftUI

@main
struct TinderUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(cardStructure: VMCard())
        }
    }
}
