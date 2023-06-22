//
//  InputSample3.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 22.06.2023.
//

import SwiftUI

struct InputSample3: View {
    
    @State var price = "0"
    @State var result = "0"
    
    var body: some View {
        VStack{
            
            TextField("Price: ", text:$price)
                .padding()
                .border(.black)
            
            HStack{
                
                Button("%8"){
                    result = String(Double(price)! * 1.08);
                }
                .padding()
                .border(.blue)
                
                Button("%18"){
                    result = String(Double(price)! * 1.18);
                }
                .padding()
                .border(.blue)
                
            }
            
            Text("Result: " + result )
                .padding()
                .font(.largeTitle)
        }
        .padding()
    }
}

struct InputSample3_Previews: PreviewProvider {
    static var previews: some View {
        InputSample3()
    }
}
