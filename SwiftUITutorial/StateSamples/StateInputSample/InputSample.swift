//
//  InputSampe.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 22.06.2023.
//

import SwiftUI

struct InputSampe: View {
    
    @State var number1 = ""
    @State var number2 = ""
    @State var result = 0
    
    var body: some View {
        VStack{
            
            TextField("Number 1", text:$number1)
                .padding()
                .border(.black)
            
            TextField("Number 2", text:$number2)
                .padding()
                .border(.black)
            
            Button("Çarp"){
                result = Int(number1)! * Int(number2)!
            }
            .padding()
            
            Text(String(result))
                .padding()
            
            
                
        }
        .padding()
    }
}

struct InputSampe_Previews: PreviewProvider {
    static var previews: some View {
        InputSampe()
    }
}
