//
//  InputArraySample.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 22.06.2023.
//

import SwiftUI

struct InputArraySample: View {
    
    @State var names = ["Çağatay", "İlayda", "Hasan"]
    
    @State var newName = ""
    
    var body: some View {
        VStack{
            
            TextField("New Name: ", text: $newName)
                .padding()
                .border(.blue)
             
            Button("Add"){
                
                names.append(newName)
                
            }.padding()
            
            ForEach(names, id:\.self){name in
                Text(name)
                    .font(.largeTitle)
            }
        }
        .padding()
    }
}

struct InputArraySample_Previews: PreviewProvider {
    static var previews: some View {
        InputArraySample()
    }
}
