//
//  LevelListView.swift
//  BasicMath
//
//  Created by José Miguel Torres Chávez Nava on 22/10/25.
//

import SwiftUI

struct LevelListView: View {
    
    @State private var vm = ViewModel()
    
    var body: some View {
        VStack {
            ScrollView(showsIndicators: false) {
                ForEach(vm.images) { animal in
                    AnimalCardView(animal: animal)
                }
            }
        }
    }
}

#Preview {
    LevelListView()
}
