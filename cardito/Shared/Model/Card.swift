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
  @Published var color: Color

  init(_ headline: [String], _ body: [String], _ color : Color = Color.white) {
    self.headline = headline
    self.body = body
    self.color = color
  }
}
