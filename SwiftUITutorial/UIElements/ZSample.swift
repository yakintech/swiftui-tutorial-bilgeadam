//
//  ZSample.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 17.06.2023.
//

import SwiftUI

struct ZSample: View {
    var body: some View {
        VStack{
            
            ZStack{
                Image("koala")
                Text("ÇAğatay")
                    .foregroundColor(.white)
                    .font(.largeTitle)
            }
          
            
        }
    }
}

struct ZSample_Previews: PreviewProvider {
    static var previews: some View {
        ZSample()
    }
}
