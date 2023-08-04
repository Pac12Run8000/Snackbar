//
//  Banner.swift
//  Snackbar
//
//  Created by Michelle Grover on 7/21/23.
//

import SwiftUI

struct Banner: View {
    let text: String = "Now viewing the benefits of Advanced Idea Mechanics"

    var body: some View {
        HStack {
            Spacer()
                .frame(width: 10)
            VStack{
                Spacer()
                    .frame(height: 30)
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(.black)
                    .font(.system(size: 24))
                Spacer()
            }
            VStack {
                Text(text)
                    .accessibility(addTraits: .isStaticText)
            }
                 
                    Spacer()
             }
             .frame(width: UIScreen.main.bounds.width - 40, height: 100)
             .background(Color.white)
             .foregroundColor(.black)
             .cornerRadius(5)
             .overlay(
                 RoundedRectangle(cornerRadius: 10)
                     .stroke(Color.black, lineWidth: 2)
             )
             .padding(.horizontal, 20)
             .accessibilityElement(children: .combine)
             .accessibilityLabel(text)
    }
    
    
}
