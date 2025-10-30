//
//  Exercise.swift
//  BasicMath
//
//  Created by José Miguel Torres Chávez Nava on 29/10/25.
//

import Foundation

struct Exercise: Codable {
    // Atributos necesarios para poder mostrar el ejercicio de matemáticas.
    let operation: [Double] // El elemento cero se opera con el elemento 1
    let answers: [Double] // Conjunto de 5 opciones para la solución, dentro de las que se encuentra la opción correcta.
    let correctAnswer: Double // Respuesta correcta del ejercicio
}
