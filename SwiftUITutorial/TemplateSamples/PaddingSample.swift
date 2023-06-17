//
//  PaddingSample.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 17.06.2023.
//

import SwiftUI

struct PaddingSample: View {
    var body: some View {
        VStack(spacing:50){
            
            HStack{
                Text("Çağatay")
                    .padding(.leading)
                Spacer()
            }
            .padding(.top)
            .padding(.bottom)
            .background(.red)
            
            HStack{
                Text("Çağatay")
                    .padding(.leading)
                Spacer()
            }
            .padding(.top)
            .padding(.bottom)
            .background(.red)
            
           
    
            

            
        }
    }
}

struct PaddingSample_Previews: PreviewProvider {
    static var previews: some View {
        PaddingSample()
    }
}
