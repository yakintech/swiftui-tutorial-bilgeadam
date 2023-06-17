//
//  Template2.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 17.06.2023.
//

import SwiftUI

struct Template2: View {
    var body: some View {
        
        VStack{
            
            Header()

            
            HStack{
                Text("Choose of the type")
                    .font(.title)
                    .fontWeight(.bold)
                  
                
                Spacer()
            }
            .padding(.top,25)
            .padding(.bottom,25)
   
            
            HStack{
                List()
            }
            
            
            HStack{
                ScrollView(.horizontal){
                  Products()
                }
            }
            
            Spacer()
            
            
        }
        .padding(.leading)
        .padding(.trailing)
        
    }
}

struct Template2_Previews: PreviewProvider {
    static var previews: some View {
        Template2()
    }
}

