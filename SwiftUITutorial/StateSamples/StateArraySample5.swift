//
//  StateArraySample5.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 19.06.2023.
//

import SwiftUI

struct StateArraySample5: View {
    
   @State var numbers = [3, 11, -10, 22, 55]
    
    var body: some View {
        VStack{
            
            Button("Add Random Number"){
                let randomInt = Int.random(in: 1..<1000)
                
                numbers.append(randomInt)
            }
            
            ForEach(numbers, id:\.self){item in
                
                Text(String(item))
                    .padding()
                
            }
        }
    }
}

struct StateArraySample5_Previews: PreviewProvider {
    static var previews: some View {
        StateArraySample5()
    }
}
