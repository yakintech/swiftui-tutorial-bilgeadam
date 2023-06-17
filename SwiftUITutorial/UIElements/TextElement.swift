//
//  TextElement.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 13.06.2023.
//

import SwiftUI

struct TextElement: View {
    var body: some View {
        
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
            
            Text("Bilge Adam")
                .fontWeight(.bold)
            
            Text("Çağatay")
                .foregroundColor(.red)
                .font(.largeTitle)
            
            Text("İstanbul")
                .background(.red)
                .foregroundColor(.white)
                .font(.largeTitle)
            
        }
    
        
    }
}

struct TextElement_Previews: PreviewProvider {
    static var previews: some View {
        TextElement()
    }
}
