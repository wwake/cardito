//
//  Card.swift
//  cardito (iOS)
//
//  Created by Bill Wake on 9/8/22.
//

import Foundation

class Card : ObservableObject, Identifiable {
  let id = UUID()

  @Published var headline: [String]
  @Published var body: [String] = []

  init(_ headline: [String], _ body: [String]) {
    self.headline = headline
    self.body = body
  }
}
