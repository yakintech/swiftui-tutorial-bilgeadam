//
//  MetalBands.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 9.07.2023.
//

import SwiftUI

struct MetalBands: View {
    
    var metalBands = ["Iron Maiden", "Gojira", "Slipknot", "Slayer", "Pantera"]
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                
                ForEach(metalBands, id:\.self){item in
                    
                    NavigationLink(destination: Detail(name: item)) {
                                       Text(item)
                            .padding()
                            .font(.largeTitle)
                                   }
                    
                }
                
            }
            
        }
        
    
    }
}

struct MetalBands_Previews: PreviewProvider {
    static var previews: some View {
        MetalBands()
    }
}
