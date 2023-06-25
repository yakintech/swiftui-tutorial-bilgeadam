//
//  SliderSample.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 25.06.2023.
//

import SwiftUI

struct SliderSample: View {
    
    var images = ["zar1", "zar2", "zar3", "zar4", "zar5", "zar6"]
    
    @State var imageIndex = 0
    
    var body: some View {
        VStack{
            Image(images[imageIndex])
                .resizable()
                .frame(width: 200, height: 200)
            
            HStack{
                Button("BACK"){
                    
                    if(imageIndex == 0){
                        imageIndex = 5
                    }
                    else{
                        imageIndex = imageIndex - 1
                    }
                    
                }.padding()
                
                Button("NEXT"){
                    if(imageIndex == 5){
                        imageIndex = 0
                    }
                    else{
                        imageIndex = imageIndex + 1
                    }
                  
                    
                }.padding()
            }
          
            
            
        }
        .padding()
    }
}

struct SliderSample_Previews: PreviewProvider {
    static var previews: some View {
        SliderSample()
    }
}
