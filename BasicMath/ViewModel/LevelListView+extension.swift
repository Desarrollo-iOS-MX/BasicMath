//
//  LevelListView+extension.swift
//  BasicMath
//
//  Created by José Miguel Torres Chávez Nava on 23/10/25.
//

import SwiftUI

extension LevelListView {
    
    @Observable
    class ViewModel {
        let images: [ImageAI] = [
            ImageAI(Image("Cow"), .blue),
            ImageAI(Image("Dog"), .yellow),
            ImageAI(Image("Lion"), .red),
            ImageAI(Image("Pigeon"), .purple),
            ImageAI(Image("Dolphin"), .cyan),
            ImageAI(Image("Eagle"), .blue),
            ImageAI(Image("Elephant"), .pink),
            ImageAI(Image("Horse"), .brown),
            ImageAI(Image("Crocodile"), .green)
        ]
    }
    
}
