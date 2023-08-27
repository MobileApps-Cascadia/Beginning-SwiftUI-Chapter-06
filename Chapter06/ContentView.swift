//
//  ContentView.swift
//  Chapter06
//
//  Created by Mike Panitz on 4/1/23.
//

import SwiftUI

struct ContentView: View {
    
    @State  var clickCount = 0
    @State  var selectedRating = 3 // Default rating is set to 3
    
    var body: some View {
        VStack {
            Button("Simple Button") {
                print("Simple button clicked!")
            }
            
            Text("Click count: \(clickCount)")
            
            Text("Please rate your experience today")
            
            HStack {
                
                SegmentedControl(selection: $selectedRating)
            }
            Text("1").tag(1)
            Text("2").tag(2)
            Text("3").tag(3)
            Text("4").tag(4)
            Text("5").tag(5)
        }
      
        
        Text(getRatingMessage())
        CustomButtom ( clickCont: $clickCount){
            Text("Custom Buttom")
                .padding()
                .foregroundColor(.white)
                .background(LinearGradient(gradient: Gradient(colors: <#T##[Color]#>.blue, Color.green]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(10)
        }
        
         func getRatingMessage() ->String{
            switch selectedRating{
            case 1:
                return "Terrible"
            case 2:
                return  "Not good"
            case 3:
                return  "Average"
            case 4:
                return "Good"
            case 5:
                return "Awesome"
            default:
                return "Please select a rating"
            }
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
                .cornerRadius(15)
            
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
        
        Button{
            print("circle button")
        } label: {
            Image("night")
                .resizable()
                .frame(width:150, height: 150)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.yellow, lineWidth: 4))
        }
    }
    
        .padding()
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
            
        }
    }
    

