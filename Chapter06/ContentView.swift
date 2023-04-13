//
//  ContentView.swift
//  Chapter06
//
//  Created by Mike Panitz on 4/1/23.
//

import SwiftUI

struct ContentView: View {
    // Create a @State variable to track the number of times the button has been clicked
    @State private var buttonClickCount = 0
    
    // Create a @State variable to track the number of lit stars
    @State private var numberOfLitStars = 0
    
    // Add a Text view that asks the user to rate their experience
    var ratingText: some View {
        Text("Please rate your experience today (5 being 'Awesome' and 1 being 'Terrible')")
    }
    
    // Add a segmented control with 5 options
    var ratingControl: some View {
        VStack {
            Picker(selection: $numberOfLitStars, label: Text("")) {
                ForEach(1...5, id: \.self) { index in
                    Text("\(index)")
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            // 10. Display appropriate message below the segmented control
            Text("\(numberOfLitStars) stars selected")
        }
    }
    
    // Create a view that displays the stars
    var starRatingView: some View {
        HStack {
            ForEach(0..<5) { index in
                Image(systemName: index < numberOfLitStars ? "star.fill" : "star")
                    .foregroundColor(.yellow)
                    .onTapGesture {
                        numberOfLitStars = index + 1
                    }
            }
        }
    }
    
    var body: some View {
        VStack {
            // Show the rating text
            ratingText
            
            // Add the segmented control and show the appropriate message
            ratingControl
            
            // Show the star rating view
            starRatingView
            
            // Add a simple button that will run the print() command when clicked
            Button("Simple Button") {
                print("Simple Button clicked!")
            }
            
            // Add a second button that uses a custom button make it unique
            CustomButton(buttonText: "Custom Button", buttonAction: {
                // Increment @State variable and show the updated count in the Text view
                buttonClickCount += 1
            })
            
            // Add a third button with a custom image
            Button(action: {
                print("Custom Image Button clicked!")
            }, label: {
                Image("Image")
                //Photo by Benjamin Voros on Unsplash https://unsplash.com/
                    .resizable()
                    .frame(width: 50, height: 50)
            })
            
            // Add a forth button with a label with an SF Symbols image next to it
            Button(action: {
                print("SF Symbol Button clicked!")
            }, label: {
                Label("SF Symbol Button", systemImage: "star.fill")
            })
            
            // Add a Text view that tells the user how many times the button has been clicked
            Text("Button clicked \(buttonClickCount) times.")
        }
        .padding()
    }
}

// Custom button view
struct CustomButton: View {
    var buttonText: String
    var buttonAction: () -> Void
    
    var body: some View {
        Button(action: {
            buttonAction()
        }, label: {
            Text(buttonText)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
