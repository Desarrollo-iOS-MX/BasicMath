//
//  AnimalCardView.swift
//  BasicMath
//
//  Created by José Miguel Torres Chávez Nava on 22/10/25.
//

import SwiftUI

struct AnimalCardView: View {
    
    let animal: Animal
    
    var body: some View {
        HStack {
            
            Image("\(animal.animal)")
                .resizable()
                .frame(width: 150, height: 150)
            
            VStack {
                // Estrellas
                HStack {
                    ForEach(0...4, id: \.self) { _ in
                        Image(systemName: "star")
                            .font(.body)
                    }
                }
                .padding()
                
                Spacer()
                
                StartLessonButton(color: Color(dynamic: animal.color))
                    .padding()
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 150)
        .background(Color(dynamic: animal.color))
        .clipShape(RoundedRectangle(cornerRadius: 25))
        .shadow(color: .gray, radius: 8, x: 0, y: 8)
        .padding(.horizontal)
        .padding(.bottom, 10)
    }
}

#Preview {
    AnimalCardView(animal: Animal(id: 0, animal: "Cow", color: "Purple"))
}
