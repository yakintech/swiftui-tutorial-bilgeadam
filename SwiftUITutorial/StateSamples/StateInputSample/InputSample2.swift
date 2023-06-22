//
//  InputSample2.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 22.06.2023.
//

import SwiftUI

struct InputSample2: View {
    
    @State var firstName = ""
    @State var lastName = ""
    
    @State var result = "Result"
    
    var body: some View {
        VStack{
            
            TextField("First Name: ", text: $firstName)
                .padding()
                .border(.black)
            
            TextField("Last Name: ", text: $lastName)
                .padding()
                .border(.black)
            
            Button("Full Name"){
                result = firstName.uppercased() + " " + lastName.uppercased()
            }
            
            
            Text(result)
                .font(.largeTitle)
            
            
        }
        .padding()
    }
}

struct InputSample2_Previews: PreviewProvider {
    static var previews: some View {
        InputSample2()
    }
}
