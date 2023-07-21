//
//  Banner.swift
//  Snackbar
//
//  Created by Michelle Grover on 7/21/23.
//

import SwiftUI

struct Banner: View {
    let text: String

    var body: some View {
        Text(text)
            .frame(width: UIScreen.main.bounds.width - 12, height: 100)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black, lineWidth: 2)
                        )
                        .padding(.horizontal, 20)
    }
}
