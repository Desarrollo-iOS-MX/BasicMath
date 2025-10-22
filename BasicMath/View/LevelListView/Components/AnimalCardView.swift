//
//  AnimalCardView.swift
//  BasicMath
//
//  Created by José Miguel Torres Chávez Nava on 22/10/25.
//

import SwiftUI

struct AnimalCardView: View {
    
    let animal: ImageAI
    
    var body: some View {
        HStack {
            animal.image
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
                
                StartLessonButton(color: animal.background)
                    .padding()
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 150)
        .background(animal.background.opacity(0.7))
        .clipShape(RoundedRectangle(cornerRadius: 25))
        .shadow(color: .gray, radius: 8, x: 0, y: 8)
        .padding(.horizontal)
        .padding(.bottom, 10)
    }
}

#Preview {
    AnimalCardView(animal: ImageAI(Image("Cow"), .blue))
}
