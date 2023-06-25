//
//  RandomSizeButton.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 24.06.2023.
//

//Int, String, Float

import SwiftUI

struct RandomSizeButton: View {
    
   @State var x : CGFloat = 200;
   @State var y : CGFloat = 200;
    
    var body: some View {
        
        VStack{
            Button("Hello SWift"){
                //butona tıkladığında x ve y random 1-500 arası değer alsın.
                x = CGFloat.random(in: 1..<500)
                y = CGFloat.random(in: 1..<500)
            }
            .frame(width: x, height: y)
            .foregroundColor(.white)
            .background(.red)
            .border(.red)
          
               
        }
    }
}

struct RandomSizeButton_Previews: PreviewProvider {
    static var previews: some View {
        RandomSizeButton()
    }
}
