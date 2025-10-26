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
        let animals = Bundle.main.decode([Level].self, from: "animals.json")
    }
    
}
