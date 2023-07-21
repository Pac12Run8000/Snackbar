//
//  View+Extension.swift
//  Snackbar
//
//  Created by Michelle Grover on 7/21/23.
//

import SwiftUI
// For second solution
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

// for the third solution

extension View {
    func banner(isPresented: Binding<Bool>, text: String) -> some View {
        let banner = Banner(text: text)
        return self.modifier(BannerModifier(isPresented: isPresented, banner: banner))
    }
}




