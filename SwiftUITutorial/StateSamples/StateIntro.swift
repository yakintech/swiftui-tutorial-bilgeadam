//
//  StateIntro.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 19.06.2023.
//

import SwiftUI

struct StateIntro: View {
    
   @State var name = "Çağatay"
    
    
    var body: some View {
        VStack{
            
            Text(name)
                .font(.largeTitle)
            
            Button("Hello"){
                name = "Ali"
            }
            
        }
    }
}

struct StateIntro_Previews: PreviewProvider {
    static var previews: some View {
        StateIntro()
    }
}
