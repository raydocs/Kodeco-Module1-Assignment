//
//  ContentView.swift
//  ColorPicker
//
//  Created by Ruirui Wan on 4/12/24.
//

import SwiftUI

struct ContentView: View {
  @State private var redValue = 50.0
  @State private var greenValue = 50.0
  @State private var blueValue = 50.0
  @State private var currentColor = Color.red
  var body: some View {
    VStack {
      Text("Color Picker")
        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
      
      RoundedRectangle(cornerRadius: 0)
        .fill(currentColor)
        .padding()
      
      Text("Red")
      HStack{
        Slider(value: $redValue, in: 0...255)
        let roundedRedValue = Int(redValue.rounded())
        Text(String(roundedRedValue))
      }
      .padding()
      
      
      Text("Green")
      HStack{
        Slider(value: $greenValue, in: 0...255)
        let roundedGreenValue = Int(greenValue.rounded())
        Text(String(roundedGreenValue))
      }.padding()
      
      
      Text("Blue")
      HStack{
        Slider(value: $blueValue, in: 0...255)
        let roundedBlueValue = Int(blueValue.rounded())
        Text(String(roundedBlueValue))
      }.padding()
      
      
      Button(action: {
        currentColor = Color(hue: redValue/255, saturation: greenValue/255, brightness: blueValue/255)
      }, label: {
        Text("Set Color")
      })
    
    }
  }
}

#Preview {
    ContentView()
}
