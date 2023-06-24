//
//  SystemImageSample.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 24.06.2023.
//

import SwiftUI

struct SystemImageSample: View {
    
    @State var imageName = ""
    
    
    var body: some View {
        VStack{
            
            TextField("System image name: ", text: $imageName)
                .textCase(.lowercase)
                .padding()
                .border(.black)
            
            Image(systemName: imageName.lowercased())
                .resizable()
                .frame(width: 200, height: 200)
        }
    }
}

struct SystemImageSample_Previews: PreviewProvider {
    static var previews: some View {
        SystemImageSample()
    }
}
