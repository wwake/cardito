//
//  Deck.swift
//  cardito (iOS)
//
//  Created by Bill Wake on 9/8/22.
//

import Foundation

class Deck: ObservableObject, Identifiable {
  let id = UUID()

  @Published var title: String
  @Published var cards: [Card]

  init(_ title: String, _ cards: [Card] = []) {
    self.title = title
    self.cards = cards
  }
}
