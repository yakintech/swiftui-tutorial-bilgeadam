//
//  CelciusToFahrenheit.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 24.06.2023.
//

import SwiftUI

struct CelciusToFahrenheit: View {
    
    @State var celsius = ""
    @State var fahrenheit = ""
    
    var body: some View {
        VStack{
            TextField("Celcius: ", text:$celsius)
                .padding()
                .border(.red)
            
            Button("Convert"){
                
                if(celsius != ""){
                    var result = (Double(celsius)! * (9/5)) + 32
                    fahrenheit = String(result)
                }
            }
            .padding()
            .border(.black)
            
            Text("F : " + fahrenheit)
                .padding()
                .font(.largeTitle)
        }
        .padding()
    }
}

struct CelciusToFahrenheit_Previews: PreviewProvider {
    static var previews: some View {
        CelciusToFahrenheit()
    }
}


// (°C × 9/5) + 32
