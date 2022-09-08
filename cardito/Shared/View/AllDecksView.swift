//
//  AllDecksView.swift
//  Shared
//
//  Created by Bill Wake on 9/6/22.
//

import SwiftUI

struct AllDecksView: View {
  var decks : [Deck]

  var body: some View {
    NavigationView {
      List {
        ForEach(decks) { deck in
          NavigationLink(destination: DeckView(deck: deck)) {
            Text(deck.title)
          }
          .navigationBarTitle("Decks")
        }
      }
      .listStyle(.plain)

      Text("No deck selected")
        .font(.headline)

    }
  }
}

struct AllDecksView_Previews: PreviewProvider {
  static var previews: some View {
    AllDecksView(decks: [Deck("pa", [], DeckTemplate(headlineFields: [], bodyFields: [])), Deck("pb", [], DeckTemplate(headlineFields: [], bodyFields: []))])
  }
}
