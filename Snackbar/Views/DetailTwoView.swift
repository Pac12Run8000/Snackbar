//
//  DetailTwoView.swift
//  Snackbar
//
//  Created by Michelle Grover on 7/21/23.
//

import SwiftUI

struct DetailTwoView: View {
    @State private var showBanner = false

        var body: some View {
            VStack {
                Button(action: {
                    self.showBanner = true
                }) {
                    Text("Show Banner")
                }
            }
            .banner(isPresented: $showBanner, text: "This is a banner")
        }
}
