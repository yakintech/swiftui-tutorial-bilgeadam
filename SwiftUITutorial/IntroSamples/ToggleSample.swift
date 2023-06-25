//
//  ToogleSample.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 24.06.2023.
//

import SwiftUI

struct ToggleSample: View {
    
    @State var showText = true
    
    var body: some View {
        VStack{
            Toggle("Show Text", isOn : $showText)
        
            
            if(showText){
                Text("OPEN")
                    .padding()
                    .font(.largeTitle)
            }
            else{
                Text("CLOSE")
                    .padding()
                    .font(.largeTitle)
            }
        
        }
        .padding()
    }
}

struct ToggleSample_Previews: PreviewProvider {
    static var previews: some View {
        ToggleSample()
    }
}
