//
//  LevelCardView.swift
//  BasicMath
//
//  Created by José Miguel Torres Chávez Nava on 25/10/25.
//

import SwiftUI

struct LevelCardView: View {
    
    let level: Level
    @Binding var isSelected: Bool
    
    var body: some View {
        // Toda la tarjeta se construye en un HStack
        HStack(spacing: 10) {
            // Información de la tarjeta
            VStack(alignment: .leading) {
                // MARK: Datos fijos del nivel
                // Título y tiempo límite
                Text("\(level.number) • \(level.type)")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.vertical)
                
                // Estadíticas
                // Al hacer tap sobre el ícono, se muestra la información en texto.
                VStack(alignment: .leading, spacing: 13) {
                    HStack {
                        Image(systemName: "timer")
                            .font(.body)
                            .foregroundStyle(Color(dynamic: level.color))
                            .fontWeight(.bold)
                        Text("\(level.timeLimit) s")
                            .font(.body)
                            .fontWeight(.medium)
                    }
                    .isHidden(!isSelected, shouldRemove: true)
                    
                    HStack {
                        Image(systemName: "medal.star.fill")
                            .font(.body)
                            .foregroundStyle(Color(dynamic: level.color))
                            .fontWeight(.bold)
                        Text("800*") // Best score (número de ejercicios resueltos)
                            .font(.body)
                            .fontWeight(.medium)
                    }
                    .isHidden(!isSelected, shouldRemove: true)
                    
                    // Este renglón dice la recompensa, o "coleccionado" si es que ya se obtuvo.
                    HStack {
                        Image(systemName: "lock.fill")
                            .font(.body)
                            .foregroundStyle(Color(dynamic: level.color))
                            .fontWeight(.bold)
                        Text("Reward: \(level.animal)")
                            .font(.body)
                            .fontWeight(.medium)
                    }
                }
                .padding(.bottom)
                
                // Información interesante del animal
                Text("\(level.info)")
                    .font(.footnote)
                    .fontWeight(.light)
                    .isHidden(!isSelected, shouldRemove: true)
            }
            .padding(.leading, 8)
            
            // Imagen y botón de inicio
            VStack(spacing: 0) {
                Image("\(level.animal)")
                    .resizable()
                    .frame(width: isSelected ? 130 : 120, height: isSelected ? 130 : 120)
                    .padding(.leading, 30)
                    .padding(.bottom, -5)
                
                
                Button {
                    print("Iniciar lección...")
                } label: {
                    Text("Practice")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.white)
                        .frame(width: 150)
                        .padding(.vertical)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        
                }
                .isHidden(!isSelected, shouldRemove: true)
                
            }
            .frame(width: 150)
        }
        .frame(maxWidth: .infinity)
        .frame(height: isSelected ? 230 : 120)
        .background(Color(dynamic: level.color).opacity(0.5))
        .clipShape(RoundedRectangle(cornerRadius: 25))
        .shadow(color: .gray, radius: 8, x: 0, y: 8)
        .padding(.horizontal)
        .contentShape(Rectangle()) // Hace toda la card tocable.
        .onTapGesture {
            isSelected.toggle()
        }
    }
}

#Preview {
    LevelCardView(level: Level(id: 0, animal: "Cow", color: "Purple", number: 1, type: "Sumas", timeLimit: 30, targetScore: 100, info: "This animal has 4 stomachs."), isSelected: .constant(false))
}
