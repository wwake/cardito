//
//  Colors.swift
//  cardito (iOS)
//
//  Created by Bill Wake on 9/8/22.
//

import Foundation
import SwiftUI

private let light = 0.125
private let heavy = 224/255.0
private let full = 1.0

enum Colors {

  case white, red, yellow, green, blue, black

  func asColor() -> Color {
    switch self {
    case .white: return Color.white
    case .red: return Color(red: full, green:heavy, blue:heavy)
    case .yellow: return Color(red: full, green:full, blue:heavy)
    case .green: return Color(red: heavy, green:full, blue:heavy)
    case .blue: return Color(red: heavy, green:full, blue:full)
    case .black: return Color.black
    }
  }
}
