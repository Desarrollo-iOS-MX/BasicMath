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
    var targetScore: Int // La puntuación mínima para desbloquear la recompensa.
}


// Variables modificadas por el usuario:

// var isUnlocked: Bool // Nos dice si la recompensa está desbloqueada o no.
// var isLastLevel: Bool // Nos dice si es el nivel más alto al que ha llegado el usuario.
