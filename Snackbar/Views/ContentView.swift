//
//  ContentView.swift
//  Snackbar
//
//  Created by Michelle Grover on 7/20/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showSnackbar = false
    @State private var navigateToDetail = false

    var body: some View {
        VStack {
            NavigationView {
                        VStack {
                            Button(action: {
                                navigateToDetail = true
                            }) {
                                Text("Go there")
                            }
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            NavigationLink(destination: DetailView(), isActive: $navigateToDetail) {
                                EmptyView()
                            }
                           Spacer()
                                .frame(height: 20)
                            Button("Show Snackbar") {
                                withAnimation {
                                    showSnackbar = true
                                }
                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                    withAnimation {
                                        showSnackbar = false
                                    }
                                }
                            }
                            Spacer()
                        }
                        .navigationBarTitle("Home - Example with DispatchQueue", displayMode: .inline)
                    }

            Spacer()

            if showSnackbar {
                Text("This is a snackbar message")
                    .padding()
                    .background(Color.gray)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
                    .transition(.move(edge: .bottom))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
