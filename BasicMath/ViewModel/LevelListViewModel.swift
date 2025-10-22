//
//  LevelListViewModel.swift
//  BasicMath
//
//  Created by José Miguel Torres Chávez Nava on 22/10/25.
//

import SwiftUI

@MainActor /// ¿Por qué usamos "@MainActor" para un ViewModel?
final class LevelListViewModel: ObservableObject {
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
