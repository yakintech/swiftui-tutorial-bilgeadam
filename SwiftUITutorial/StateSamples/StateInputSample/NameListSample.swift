//
//  NameListSample.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 24.06.2023.
//

import SwiftUI

struct NameListSample: View {
    @State var firstname = ""
    @State var lastname = ""
    
    @State var names : [String] = []
    
    
    var body: some View {
        
        VStack{
            
            TextField("First Name: ", text: $firstname)
                .padding()
                .border(.blue)
            
            TextField("Last Name: ", text: $lastname)
                .padding()
                .border(.blue)
            
            Button("Add"){
                
                var fullName = firstname + " " + lastname;
                names.append(fullName)
            }
            
            ForEach(names, id: \.self){item in
                Text(item)
                    .font(.largeTitle)
                    .padding()
            }
            
            
            
        }
        .padding()
        
    }
}

struct NameListSample_Previews: PreviewProvider {
    static var previews: some View {
        NameListSample()
    }
}
