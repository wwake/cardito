//
//  carditoApp.swift
//  Shared
//
//  Created by Bill Wake on 9/6/22.
//

import SwiftUI

@main
struct carditoApp: App {
    var body: some Scene {
        WindowGroup {
          ContentView(decks: [Deck("a"), Deck("b")])
        }
    }
}
