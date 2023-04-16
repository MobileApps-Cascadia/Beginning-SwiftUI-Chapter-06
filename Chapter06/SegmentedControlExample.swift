//
//  SegmentedControlExample.swift
//  Chapter06
//
//  Created by Mike Panitz on 4/1/23.
//

import Foundation

import SwiftUI
struct SegmentedControlExample: View {
    @State private var message = ""
    var body: some View {
        VStack (spacing: 28) {
            Text(message)
            Picker("", selection: $message, content: {
                Text("Happy").tag("happy")
                Text("Sad").tag("sad")
                Text("Bored").tag("bored")
            }).pickerStyle(SegmentedPickerStyle())
                .onChange(of: message) { newValue in
                    switch newValue {
                    case "happy": message = "Be happy and joyous"
                    case "sad": message = "Life can be a struggle at times"
                    case "bored": message = "Look for your purpose"
                    default:
                        break
                    }
                }
        }
    }
}

struct SegmentedControlExample_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControlExample()
    }
}
