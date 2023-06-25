//
//  ImageGallery.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 24.06.2023.
//

import SwiftUI

struct ImageGallery: View {
    
    var images = ["koala", "ayi", "fil", "zebra"]
    @State var name = "0"
    var body: some View {
        
        ScrollView {
            Text(name)
                .font(.largeTitle)
            
            VStack{
                ForEach(images, id:\.self){item in
                    Button{
                        name = item
                    }
                label:{
                    Image(item)
                    }
                }
            }
        }
       
     
    }
}

struct ImageGallery_Previews: PreviewProvider {
    static var previews: some View {
        ImageGallery()
    }
}
