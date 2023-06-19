//
//  StateArraySample.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 19.06.2023.
//

import SwiftUI

struct StateArraySample: View {
    
   @State var metalBands = ["Iron Maiden", "Gojira", "Slipknot"]
    
    var body: some View {
        VStack{
            
            Button("Clear All"){
                metalBands = []
            }.padding()
            
            Text("Count: " + String(metalBands.count))
                .padding()
            
            ForEach(metalBands, id:\.self){name in
                Text(name)
                    .font(.largeTitle)
            }
            
        }
    }
}

struct StateArraySample_Previews: PreviewProvider {
    static var previews: some View {
        StateArraySample()
    }
}
