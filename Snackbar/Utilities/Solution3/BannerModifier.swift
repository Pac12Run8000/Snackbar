//
//  BannerModifier.swift
//  Snackbar
//
//  Created by Michelle Grover on 7/21/23.
//

import SwiftUI

struct BannerModifier: ViewModifier {
    @Binding var isPresented: Bool
    let banner: Banner
    @State private var bannerPosition: CGFloat = UIScreen.main.bounds.height

    func body(content: Content) -> some View {
        ZStack {
            content

            if isPresented {
                banner
                    .offset(y: bannerPosition)
                    .onAppear {
                        withAnimation {
                            bannerPosition = 0
                        }
                        
                        Timer.scheduledTimer(withTimeInterval: 5.0, repeats: false) { _ in
                            withAnimation {
                                bannerPosition = UIScreen.main.bounds.height
                                self.isPresented = false
                            }
                        }
                    }
            }
        }
    }
}
