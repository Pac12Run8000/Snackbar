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
                    .opacity(isPresented ? 1 : 0)
                    .onAppear {
                        withAnimation {
                            bannerPosition = 0
                        }
                        
                        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { _ in
                            withAnimation(Animation.linear(duration: 2.0)) {
                                bannerPosition = UIScreen.main.bounds.height
                                self.isPresented = false
                            }
                        }
                    }
            }


        }
    }
}
