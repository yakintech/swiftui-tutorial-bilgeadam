//
//  VHStackSample.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 13.06.2023.
//

import SwiftUI

struct VHStackSample: View {
    var body: some View {
        VStack{
            HStack{
                Text("Description")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                
                Spacer()
            }
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled ")
  
                
            
            
            HStack{
                Text("Type")
                  
                
                Text("Size")
                    .padding(.leading)
          
                Text("Level")
                    .padding(.leading)
                    
               
                Spacer()
            }
            .foregroundColor(.gray)
            .font(.title)
            .padding(.top)
            
            HStack{
                Text("Outdoor")
                  
                
                Text("Medium")
                    .padding(.leading)
          
                Text("Easy")
                    .padding(.leading)
                    
               
                Spacer()
            }
            .font(.title)
            .padding(.top)
            .fontWeight(.bold)
            
        
            
          Spacer()
          
            
        }
        .padding()
        }
    
}

struct VHStackSample_Previews: PreviewProvider {
    static var previews: some View {
        VHStackSample()
    }
}
