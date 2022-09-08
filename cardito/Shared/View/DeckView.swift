//
//  DeckView.swift
//  cardito (iOS)
//
//  Created by Bill Wake on 9/8/22.
//

import Foundation
import SwiftUI

struct DeckView : View {
  var deck: Deck!

  var body: some View {
    Text(deck.title)
    List(deck.cards, id:\.self) {
      Text($0)
    }
    .listStyle(.plain)
  }
}
