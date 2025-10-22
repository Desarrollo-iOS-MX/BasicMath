//
//  StartLessonButton.swift
//  BasicMath
//
//  Created by José Miguel Torres Chávez Nava on 22/10/25.
//

import SwiftUI

struct StartLessonButton: View {
    
    let color: Color
    
    var body: some View {
        Button {
            // Navegación a la lección correspondiente
        } label: {
            Text("Start")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundStyle(Color.black)
                .frame(width: 150)
                .padding()
                .background(color)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                
        }
    }
}

#Preview {
    StartLessonButton(color: .green)
}
