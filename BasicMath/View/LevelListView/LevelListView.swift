//
//  LevelListView.swift
//  BasicMath
//
//  Created by José Miguel Torres Chávez Nava on 22/10/25.
//

import SwiftUI

struct LevelListView: View {
    
    @State private var vm = ViewModel()
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack {
            ScrollView(showsIndicators: false) {
                ForEach(vm.levels) { level in
                    LevelCardView(
                        level: level,
                        isSelected: $isSelected
                    )
                    .onTapGesture {
                        isSelected.toggle()
                    }
                }
            }
        }
    }
    
}

#Preview {
    LevelListView()
}
