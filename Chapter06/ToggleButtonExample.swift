//
//  ToggleButtonExample.swift
//  Chapter06
//
//  Created by Mike Panitz on 4/1/23.
//

import Foundation

import SwiftUI
struct ToggleButtonExample: View {
    @State var colorMe = false
    var body: some View {
        VStack (spacing: 28) {
            Rectangle()
                .fill(colorMe ? Color.green : Color.gray)
                .frame(width: 250, height: 100)
            Button("Plain text button") {
                colorMe.toggle()
            }
            Button {
                colorMe.toggle()
            } label: {
                Text("Custom text button")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .padding()
                    .border(Color.red, width: 6)
            }
            Button {
                colorMe.toggle()
            } label: {
                Label("Image button", systemImage: "hare.fill")
                    .font(.largeTitle)
                    .foregroundColor(.purple)
                    .padding()
                    .border(Color.blue, width: 6)
            }
            Button {
                colorMe.toggle()
            } label: {
                Image("browncat")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.yellow, lineWidth: 4))
            }
        }
    }
}
struct ToggleButtonExample_Previews: PreviewProvider {
    static var previews: some View {
        ToggleButtonExample()
    }
}
