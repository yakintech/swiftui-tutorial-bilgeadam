//
//  CounterState.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 19.06.2023.
//

import SwiftUI

struct CounterState: View {
    @State var counter = 0
    var body: some View {
        
        VStack{
            
            Text(String(counter))
                .font(.largeTitle)
                .padding()
              
            
            Button("Increase"){
                counter = counter + 1
            }
            .font(.largeTitle)
            .padding()
            
        }
        

    }
}

struct CounterState_Previews: PreviewProvider {
    static var previews: some View {
        CounterState()
    }
}
