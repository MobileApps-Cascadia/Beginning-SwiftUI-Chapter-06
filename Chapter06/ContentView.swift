//
//  ContentView.swift
//  Chapter06
//
//  Created by Mike Panitz on 4/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Click here") {
                // code to run
                print("First button clicked")
            }
            Button {
                // code to run
                print("Second button pushed")
            } label: {
                Text("Click here")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .padding()
                    .border(Color.red, width: 6)
            }
            Button {
                // code to run
                print("Third button tapped")
            } label: {
                Label("Image button", systemImage: "hare.fill")
                    .font(.largeTitle)
                    .foregroundColor(.purple)
                    .padding()
                    .border(Color.blue, width: 6)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
