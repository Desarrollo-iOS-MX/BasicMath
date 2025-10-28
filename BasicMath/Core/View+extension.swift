//
//  View+extension.swift
//  BasicMath
//
//  Created by José Miguel Torres Chávez Nava on 28/10/25.
//

import SwiftUI

extension View {
    /// Oculta la vista manteniendo su tamaño, o la elimina del layout.
    /// - Parameters:
    ///   - shouldHide: true para ocultar.
    ///   - shouldRemove: true para quitarla del layout si está oculta.
    @ViewBuilder
    func isHidden(_ shouldHide: Bool, shouldRemove: Bool = false) -> some View {
        if shouldHide {
            if shouldRemove {
                EmptyView()
            } else {
                self.hidden()
            }
        } else {
            self
        }
    }
}
