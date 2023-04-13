//
//  ContentView.swift
//  Chapter06
//
//  Created by Mike Panitz on 4/1/23.
//

import SwiftUI

struct ContentView: View {
    @State var numClicked = 0
    @State private var message = ""
    @State private var pickedColor1 = Color.gray
    @State private var pickedColor2 = Color.gray
    @State private var pickedColor3 = Color.gray
    @State private var pickedColor4 = Color.gray
    @State private var pickedColor5 = Color.gray
    
    var body: some View {
        VStack{
            VStack(spacing: 25) {
                Text("Buttons")
                    .fontWeight(.bold)
                    .font(.title)
                Button{
                    print("ByeBye")
                } label: {
                    Text("Sup")
                }
                Button{
                    numClicked = numClicked + 1
                } label: {
                    Label("Stumped", systemImage: "scribble.variable")
                }
                    .padding()
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .background(Capsule()
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [.indigo,.pink]),
                                           startPoint: .bottom,
                                           endPoint: .trailing)))
                Text("Number of times Stumped button has been clicked: " + String(numClicked))
            }
            .padding()
            .background(.green
                .opacity(0.25))
            .padding()

            VStack(spacing: 25) {
                Text("Segmented Controls")
                    .fontWeight(.bold)
                    .font(.title)
                Text("Please rate your experience today (5 being 'Awesome' and 1 being 'Terrible')")
                
                Picker("", selection: $message, content: {
                    Text("1").tag("1")
                    Text("2").tag("2")
                    Text("3").tag("3")
                    Text("4").tag("4")
                    Text("5").tag("5")
                }).pickerStyle(SegmentedPickerStyle())
                    .onChange(of: message) { newValue in
                        switch newValue {
                        case "1": message = "Terrible"
                            pickedColor1 = Color.teal
                            pickedColor2 = Color.gray
                            pickedColor3 = Color.gray
                            pickedColor4 = Color.gray
                            pickedColor5 = Color.gray
                        case "2": message = "Bad"
                            pickedColor1 = Color.teal
                            pickedColor2 = Color.teal
                            pickedColor3 = Color.gray
                            pickedColor4 = Color.gray
                            pickedColor5 = Color.gray
                        case "3": message = "Mediocre"
                            pickedColor1 = Color.teal
                            pickedColor2 = Color.teal
                            pickedColor3 = Color.teal
                            pickedColor4 = Color.gray
                            pickedColor5 = Color.gray
                        case "4": message = "Good"
                            pickedColor1 = Color.teal
                            pickedColor2 = Color.teal
                            pickedColor3 = Color.teal
                            pickedColor4 = Color.teal
                            pickedColor5 = Color.gray
                        case "5": message = "Awesome"
                            pickedColor1 = Color.teal
                            pickedColor2 = Color.teal
                            pickedColor3 = Color.teal
                            pickedColor4 = Color.teal
                            pickedColor5 = Color.teal
                        default:
                            break
                        }
                    }
                HStack{
                    Image(systemName: "star.fill").foregroundColor(pickedColor1)
                    Image(systemName: "star.fill").foregroundColor(pickedColor2)
                    Image(systemName: "star.fill").foregroundColor(pickedColor3)
                    Image(systemName: "star.fill").foregroundColor(pickedColor4)
                    Image(systemName: "star.fill").foregroundColor(pickedColor5)
                }
                Text(message)
                
            }
            .padding()
            .background(.blue
                .opacity(0.25))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
