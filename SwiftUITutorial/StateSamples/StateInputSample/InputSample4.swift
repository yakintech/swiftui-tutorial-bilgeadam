//
//  InputSample4.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 24.06.2023.
//

import SwiftUI

struct InputSample4: View {
    
    @State var name = "";
    var body: some View {
        
        VStack{
            TextField("Name: ", text:$name)
                .padding()
                .border(.black)
            
            Text(name)
            Text(name)
            Text(name)
            Text(name)
        }
        .padding()
    }
}

struct InputSample4_Previews: PreviewProvider {
    static var previews: some View {
        InputSample4()
    }
}
