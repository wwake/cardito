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
    NavigationView {
      VStack {
        List(deck.cards) { card in
          NavigationLink(destination: CardView(card: card)) {
            ForEach(card.headline, id:\.self) {
              Text($0)
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
            }
          }
        }
        .navigationBarTitle(deck.title)

        .listStyle(.plain)
      }
      Text("No deck selected")
        .font(.headline)
    }
  }
}
