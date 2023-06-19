//
//  StateArraySample2.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 19.06.2023.
//

import SwiftUI

struct StateArraySample2: View {
    
   @State var countries = ["Türkiye", "Almanya", "İran", "Rusya"]
    
    var body: some View {
        
        VStack{
            
            Button("Add New City"){
                
                countries.append("Yunanistan")
                
            }.padding()
            
            
            ForEach(countries, id:\.self){item in
                Text(item)
                    .padding()
            }
        }
    }
}

struct StateArraySample2_Previews: PreviewProvider {
    static var previews: some View {
        StateArraySample2()
    }
}
