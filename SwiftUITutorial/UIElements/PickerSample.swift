//
//  PickerSample.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 8.07.2023.
//

import SwiftUI

struct PickerSample: View {
    
    var colors = ["Red", "Green", "Blue", "Tartan"]
    @State private var selectedColor = "Red"
    
    @State var result = ""


    
    var body: some View {
        VStack{
            Picker("Please choose a color", selection: $selectedColor) {
                          ForEach(colors, id: \.self) {
                              Text($0)
                          }
                      }
            
            Button("Show"){
                result = selectedColor
            }
            .padding()
            
            Text(result)
                .font(.largeTitle)
                .padding()
        }
    }
}

struct PickerSample_Previews: PreviewProvider {
    static var previews: some View {
        PickerSample()
    }
}
