//
//  Deck.swift
//  cardito (iOS)
//
//  Created by Bill Wake on 9/8/22.
//

import Foundation

struct DeckTemplate {
  var headlineFields: [String]
  var bodyFields: [String]
}

class Deck: ObservableObject, Identifiable {
  let id = UUID()

  @Published var title: String
  @Published var cards: [Card]
  var template: DeckTemplate

  init(_ title: String, _ cards: [Card] = [], _ template: DeckTemplate) {
    self.title = title
    self.cards = cards
    self.template = template
  }
}
