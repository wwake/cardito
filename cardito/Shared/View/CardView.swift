//
//  CardView.swift
//  cardito (iOS)
//
//  Created by Bill Wake on 9/8/22.
//

import Foundation
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
    .background(card.color.asColor())
    .foregroundColor(card.color == Colors.black ? Color.white : Color.black)
  }
}

struct CardView_Previews: PreviewProvider {
  static var previews: some View {
    CardView(card: Card(["h1 very long needs to be trimmed", "h2"], ["b1", "b2", "b3", "b4", "b5"]))
      .previewInterfaceOrientation(.landscapeLeft)
  }
}
