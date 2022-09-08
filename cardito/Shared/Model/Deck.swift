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
  @Published var cards: [String] = ["c1", "c2", "c3"]

  init(_ title: String) {
    self.title = title
  }
}
