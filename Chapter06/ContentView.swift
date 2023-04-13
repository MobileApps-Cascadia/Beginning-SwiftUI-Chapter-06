//
//  ContentView.swift
//  Chapter06
//
//  Created by Mike Panitz on 4/1/23.
//

import SwiftUI

struct ContentView: View {
    @State var counter = 0
    @State private var message = ""
    @State private var pickedColor1 = Color.gray
    @State private var pickedColor2 = Color.gray
    @State private var pickedColor3 = Color.gray
    @State private var pickedColor4 = Color.gray
    @State private var pickedColor5 = Color.gray
    var body: some View {
        VStack {
            Button{
                print("vibing")
            }label:{
                Text("Hello, world!")
            }
            Button{
                counter += 1
            }label: {
                Label("Just Vibing", image: "custom.gamecontroller")
                    .font(.largeTitle)
                    .foregroundColor(.purple)
                    .padding()
                    .border(Color.yellow, width: 8)
            }
            Text("Just Vibing has been clicked " + String(counter))
                .font(.callout)
            
        }
        VStack{
            Text("Please Rate your experience today (5 being 'Awesome' and 1 being 'Terrible')")
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
                        pickedColor1 = Color.yellow
                        pickedColor2 = Color.gray
                        pickedColor3 = Color.gray
                        pickedColor4 = Color.gray
                        pickedColor5 = Color.gray
                    case "2": message = "Okay"
                        pickedColor1 = Color.yellow
                        pickedColor2 = Color.yellow
                        pickedColor3 = Color.gray
                        pickedColor4 = Color.gray
                        pickedColor5 = Color.gray
                    case "3": message = "Mid"
                        pickedColor1 = Color.yellow
                        pickedColor2 = Color.yellow
                        pickedColor3 = Color.yellow
                        pickedColor4 = Color.gray
                        pickedColor5 = Color.gray
                    case "4": message = "Great"
                        pickedColor1 = Color.yellow
                        pickedColor2 = Color.yellow
                        pickedColor3 = Color.yellow
                        pickedColor4 = Color.yellow
                        pickedColor5 = Color.gray
                    case "5": message = "Awesome"
                        pickedColor1 = Color.purple
                        pickedColor2 = Color.purple
                        pickedColor3 = Color.purple
                        pickedColor4 = Color.purple
                        pickedColor5 = Color.purple
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
        .background(.pink
            .opacity(0.10))
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
