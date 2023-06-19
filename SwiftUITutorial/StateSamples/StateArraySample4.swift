//
//  StateArraySample4.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 19.06.2023.
//

import SwiftUI
import Foundation

struct StateArraySample4: View {
    
   @State var products = ["IPhone", "Samsung", "Huawei", "Siemens"]
    
    var body: some View {
        VStack{
            
            Button("Reverse"){
                products.reverse()
            }
            
            ForEach(products, id:\.self){item in
                Text(item)
                    .font(.largeTitle)
                    .padding()
            }
        }
    }
}

struct StateArraySample4_Previews: PreviewProvider {
    static var previews: some View {
        StateArraySample4()
    }
}
