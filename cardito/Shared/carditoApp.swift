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
              [Card(["c1a", "c1b"], [], Colors.red),
               Card(["c2", "c2b"], ["b1", "b2", "b3"], Colors.black),
               Card(["c3", "c3b"], [], Colors.white)]
            ),
            Deck(
              "deck-b",
              [Card(["bb1"], [], Colors.blue),
               Card(["bb22"], ["b1", "b2", "b3"], Colors.green),
               Card(["bb3"], [], Colors.yellow),
               Card(["bb4"], [], Colors.white)]
            )])
        }
    }
}
