//
//  LevelListView.swift
//  BasicMath
//
//  Created by José Miguel Torres Chávez Nava on 22/10/25.
//

import SwiftUI

struct LevelListView: View {
    
    @State private var vm = ViewModel()
    @State var selectedLevelID: Int? = nil
    
    var body: some View {
        VStack {
            ScrollView(showsIndicators: false) {
                ForEach(vm.levels) { level in
                    // Personalizamos el binding para cada nivel
                    let isSelected = Binding<Bool>(
                        get: { selectedLevelID == level.id }, // Se lee cada vez que la vista LevelCardView usa el valor de "isSelected"
                        set: { newValue in // newValue es el opuesto al valor booleano que se calcula en el get. Se manda a llamar al set, cuando presionamos isSelected.toggle()
                            if newValue {
                                // Seleccionamos el nivel (selectedLevelID NO era igual a level.id, por eso new value fue true)
                                selectedLevelID = level.id
                            } else {
                                // Deseleccionamos el nivel (selectedLevelID SI era igual a level.id, por eso newValue fue false)
                                selectedLevelID = nil
                            }
                        }
                    )
                    // Lo usamos en la vista
                    LevelCardView(
                        level: level,
                        isSelected: isSelected
                    )
                }
            }
        }
    }
}

#Preview {
    LevelListView()
}
