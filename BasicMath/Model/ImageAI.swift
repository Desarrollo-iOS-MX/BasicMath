//
//  ImageAI.swift
//  BasicMath
//
//  Created by José Miguel Torres Chávez Nava on 22/10/25.
//

import SwiftUI

struct ImageAI: Identifiable {
    let id = UUID()
    let image: Image
    let background: Color
    
    init(_ image: Image, _ background: Color) {
        self.image = image
        self.background = background
    }
}
