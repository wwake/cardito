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
              [Card(["c1a", "c1b"], [], Color.pink), Card(["c2", "c2b"], ["b1", "b2", "b3"], Color.black), Card(["c3", "c3b"], [], Color.white)]
                ),
            Deck(
              "deck-b",
              [Card(["bb1"], [], Color.cyan),
               Card(["bb22"], ["b1", "b2", "b3"], Color.mint),
               Card(["bb3"], [], Color.yellow),
               Card(["bb4"], [], Color.white)]
            )])
        }
    }
}
