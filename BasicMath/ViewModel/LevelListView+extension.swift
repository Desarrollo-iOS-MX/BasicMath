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
        let levels = Bundle.main.decode([Level].self, from: "levels.json")
    }
    
}
