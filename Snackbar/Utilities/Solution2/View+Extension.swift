//
//  View+Extension.swift
//  Snackbar
//
//  Created by Michelle Grover on 7/21/23.
//

import SwiftUI

extension View {
    func popup<T: View>(
        isPresented: Bool,
        alignment: Alignment = .center,
        direction: Popup<T>.Direction = .bottom,
        @ViewBuilder content: () -> T
    ) -> some View {
        return modifier(Popup(isPresented: isPresented, alignment: alignment, direction: direction, content: content))
    }
}
