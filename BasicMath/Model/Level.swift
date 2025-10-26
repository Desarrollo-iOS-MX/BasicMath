//
//  Level.swift
//  BasicMath
//
//  Created by José Miguel Torres Chávez Nava on 22/10/25.
//

import SwiftUI

// Datos inmutables de los niveles del juego. Se obtienen de un JSON local.
struct Level: Codable, Identifiable {
    var id: Int // Identificador
    var animal: String // Nombre del asset
    var color: String // Color de fondo (seguir paleta de colores)
    var number: Int // Número de nivel que representa
    var type: String // Tipo de nivel (sumas, restas, multiplicación, división, raíces)
    var timeLimit: Int // Tiempo límite del nivel
}
