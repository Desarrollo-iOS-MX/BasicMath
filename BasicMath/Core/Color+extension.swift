//
//  Color+extension.swift
//  BasicMath
//
//  Created by José Miguel Torres Chávez Nava on 24/10/25.
//

import SwiftUI

extension Color {
    init(dynamic name: String) {
        switch name.lowercased() {
        case "blue":   self = .blue
        case "yellow": self = .yellow
        case "red":    self = .red
        case "purple": self = .purple
        case "cyan":   self = .cyan
        case "pink":   self = .pink
        case "brown":  self = .brown
        case "green":  self = .green
        case "black":  self = .black
        case "gray":   self = .gray
        case "orange": self = .orange
        default:       self = .clear
        }
    }
}
