//
//  StateInputSample.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 22.06.2023.
//

import SwiftUI

struct StateInputSample: View {
    
    @State var email = ""
    
    var body: some View {
        VStack{
            
            TextField("EMail",text: $email)
                .padding()
                .border(.gray)
            
       
        }
        .padding()
    }
}

struct StateInputSample_Previews: PreviewProvider {
    static var previews: some View {
        StateInputSample()
    }
}
