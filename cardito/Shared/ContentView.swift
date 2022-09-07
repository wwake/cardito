//
//  ContentView.swift
//  Shared
//
//  Created by Bill Wake on 9/6/22.
//

import SwiftUI

class Deck: ObservableObject, Identifiable {
  let id = UUID()
  @Published var title: String
  @Published var cards: [String] = ["c1", "c2", "c3"]
  init(_ title: String) {
    self.title = title
  }
}

struct DeckView : View {
  var deck: Deck!

  var body: some View {
    Text(deck.title)
    ForEach(deck.cards, id:\.self) {
      Text($0)
    }
  }
}

struct ContentView: View {
  var decks : [Deck]

  var body: some View {
   // NavigationView {
      VStack {
        List {
          ForEach(decks) {deck in
            Text(deck.title)
//            NavigationLink(destination: DeckView(deck: deck)) {
//              Text("Deck \(deck.title)!")
//                .padding()
//            }
          }
        }
     //   .navigationTitle("Decked")

          .listStyle(.bordered(alternatesRowBackgrounds: true))
          .frame(width: 500, height: 300)
      }
//    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(decks: [Deck("pa"), Deck("pb")])
  }
}
