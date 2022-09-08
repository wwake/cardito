//
//  Card.swift
//  cardito (iOS)
//
//  Created by Bill Wake on 9/8/22.
//

import Foundation
import SwiftUI

class Card : ObservableObject, Identifiable {
  let id = UUID()

  @Published var headline: [String]
  @Published var body: [String]
  @Published var color: Colors

  init(_ headline: [String], _ body: [String], _ color : Colors = Colors.white) {
    self.headline = headline
    self.body = body
    self.color = color
  }
}
