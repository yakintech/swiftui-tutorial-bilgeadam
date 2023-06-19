//
//  StateDesignSample.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 19.06.2023.
//

import SwiftUI

struct StateDesignSample: View {
    
    @State var x : CGFloat = 100;
    @State var y : CGFloat = 100;
    
    var body: some View {
        
        VStack{
            Button("Random Size"){
                x = CGFloat.random(in: 1..<500)
                y = CGFloat.random(in: 1..<500)
                
            
            }
            
            Image("koala")
                .resizable()
                .frame(width: x, height: y)
        }
        
     
            
    }
}

struct StateDesignSample_Previews: PreviewProvider {
    static var previews: some View {
        StateDesignSample()
    }
}
