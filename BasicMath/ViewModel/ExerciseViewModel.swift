//
//  ExerciseViewModel.swift
//  BasicMath
//
//  Created by José Miguel Torres Chávez Nava on 29/10/25.
//

import Foundation

extension ExerciseView {
    
    @Observable
    class ViewModel {
        let exercises = Bundle.main.decode([Exercise].self, from: "level1Exercises.json")
        
        var questionNumber = 0
        var score = 0
        var isGameOver = false
        
    }
    
}
