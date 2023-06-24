//
//  RandomImage.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 24.06.2023.
//

import SwiftUI

struct RandomImage: View {
    
    var images = ["fil", "ayi", "zebra", "koala"]
    
    @State var randomNumber = 0
    
    var body: some View {
        VStack{
            Image(images[randomNumber])
                .resizable()
                .frame(width: 600, height: 300)
            
            Button("Random"){
                
                randomNumber = Int.random(in: 0..<4)
                
            }
            .font(.largeTitle)
        }
    }
}

struct RandomImage_Previews: PreviewProvider {
    static var previews: some View {
        RandomImage()
    }
}
