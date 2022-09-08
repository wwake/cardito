//
//  ContentView.swift
//  Shared
//
//  Created by Bill Wake on 9/6/22.
//

import SwiftUI

struct CardView: View {
  var card: Card

  var body: some View {
    VStack {
      HStack(alignment:.top) {
        ForEach(card.headline, id:\.self) {
          Text($0)
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)

        }
      }
      .padding(16)

      VStack {
        List(card.body, id:\.self) {
          Text($0)
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)

        }
      }
      .listStyle(.plain)
      Spacer()
    }
  }
}

struct CardView_Previews: PreviewProvider {

  static var previews: some View {
    CardView(card: Card(headline: ["h1 very long needs to be trimmed", "h2"], body:["b1", "b2", "b3", "b4", "b5"]))
      .previewInterfaceOrientation(.landscapeLeft)
  }
}

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
    AllDecksView(decks: [Deck("pa"), Deck("pb")])
  }
}
