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
              [Card(["c1a", "c1b"], ["b1", "b2", "b3", "b4"], Colors.red),
               Card(["c2", "c2b"], ["c2b-s", "c2b-c", "c2b-state", "c2b-zip"], Colors.black),
               Card(["c3", "c3b"], ["b1", "b2", "b3", "b4"], Colors.white)],
              DeckTemplate(headlineFields: ["first", "last"], bodyFields: ["Street", "City", "State", "Zip"])
            ),
            Deck(
              "deck-b",
              [Card(["bb1"], ["b1", "b2"], Colors.blue),
               Card(["bb22"], ["b1", "b2"], Colors.green),
               Card(["bb3"], ["b1", "b2"], Colors.yellow),
               Card(["bb4"], ["b1", "b2"], Colors.white)],
              DeckTemplate(headlineFields: ["headline"], bodyFields: ["Body1", "Body2"])
            )])
        }
    }
}
