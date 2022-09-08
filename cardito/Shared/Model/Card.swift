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

  init(headline: [String], body: [String]) {
    self.headline = headline
    self.body = body
  }
}
