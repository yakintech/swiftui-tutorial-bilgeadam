//
//  StateArraySample3.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 19.06.2023.
//

import SwiftUI

struct StateArraySample3: View {
    
    @State var cities = ["İstanbul", "İzmir", "Ankara", "Trabzon"];
    
    var body: some View {
        VStack{ 
            ForEach(cities, id:\.self){city in
                
                Button(city)
                {
                    cities = cities.filter({$0 != city})
                       
                }.padding()
            }
        }
    }
}

struct StateArraySample3_Previews: PreviewProvider {
    static var previews: some View {
        StateArraySample3()
    }
}
