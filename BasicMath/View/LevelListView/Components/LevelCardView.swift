//
//  LevelCardView.swift
//  BasicMath
//
//  Created by José Miguel Torres Chávez Nava on 25/10/25.
//

import SwiftUI

struct LevelCardView: View {
    
    let level: Level
    
    var body: some View {
        // Toda la tarjeta se construye en un HStack
        HStack {
            // Información de la tarjeta
            VStack(alignment: .leading) {
                // MARK: Datos fijos del nivel
                // Título y tiempo límite
                Text("Nivel \(level.number) • \(level.type)")
                Text("⏱️ \(level.timeLimit) s")
                
                // MARK: Estadíticas
                // Al hacer tap sobre el ícono, se muestra la información en texto.
                Text("🔝 1210")
                Text("𝍣 25")
                Text("꠪ 3")
                
                // MARK: Recompensa
                Text("🔒 Recompensa: \(level.animal)")
            }
            
            // Imagen y botón de inicio
            VStack {
                Image("\(level.animal)")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .padding()
                
            }
            
        }
        
        
    }
}

#Preview {
    LevelCardView(level: Level(id: 0, animal: "Cow", color: "Purple", number: 1, type: "Sumas", timeLimit: 30))
}
