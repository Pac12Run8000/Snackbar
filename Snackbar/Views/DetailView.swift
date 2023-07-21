//
//  DetailView.swift
//  Snackbar
//
//  Created by Michelle Grover on 7/20/23.
//

import SwiftUI

struct DetailView: View {
    @State private var isSnackbarPresented = false

        var body: some View {
            Button("Show Snackbar") {
                isSnackbarPresented = true
            }
            .popup(isPresented: isSnackbarPresented, alignment: .bottom, direction: .bottom) {
                Text("This is a snackbar")
                    .frame(width: 200, height: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
}
