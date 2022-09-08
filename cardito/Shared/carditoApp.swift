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
          AllDecksView(decks: [
            Deck(
              "deck-a",
              [Card(["c1"], []), Card(["c2"], ["b1", "b2", "b3"]), Card(["c3"], [])]
                ),
            Deck(
              "deck-b",
              [Card(["bb1"], []), Card(["bb22"], ["b1", "b2", "b3"]), Card(["bb3"], [])]
            )])
        }
    }
}
