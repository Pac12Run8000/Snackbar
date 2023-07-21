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
            .frame(width: UIScreen.main.bounds.width, height: 50)
            .background(Color.blue)
            .foregroundColor(.white)
    }
}
