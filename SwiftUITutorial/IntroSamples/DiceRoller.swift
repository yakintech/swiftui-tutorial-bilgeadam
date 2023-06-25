//
//  DiceRoller.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 24.06.2023.
//

import SwiftUI

struct DiceRoller: View {
    
    var dices = ["zar1", "zar2", "zar3", "zar4", "zar5", "zar6"]
    
    @State var dice1 = "zar1"
    @State var dice2 = "zar1"
    
    var body: some View {
        VStack{
            
            HStack{
                Image(dice1)
                    .resizable()
                    .frame(width: 150, height: 150)
                    .padding()
                
                Image(dice2)
                    .resizable()
                    .frame(width: 150, height: 150)
                    .padding()
            }
            .padding()
            
            Button("SALLA"){
                
                var random1 = Int.random(in: 0..<6)
                var random2 = Int.random(in: 0..<6)
                
                dice1 = dices[random1]
                dice2 = dices[random2]
            }
            .font(.largeTitle)
            .padding()
            
            
        }
    }
}

struct DiceRoller_Previews: PreviewProvider {
    static var previews: some View {
        DiceRoller()
    }
}
