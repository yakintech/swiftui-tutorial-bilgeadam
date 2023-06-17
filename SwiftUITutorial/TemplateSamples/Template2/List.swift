//
//  List.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 17.06.2023.
//

import SwiftUI

struct List: View {
    var body: some View {
        ScrollView(.horizontal){
            HStack{
                HStack{
                    Image(systemName: "car")
                        .font(.system(size: 40.0))
                    Text("Car")
                }
                .padding()
                .background(.blue)
                .cornerRadius(40)
                .foregroundColor(.white)
                
                HStack{
                    Image(systemName: "star")
                        .font(.system(size: 40.0))
                    Text("Star")
                }
                .padding()
                .background(.gray)
                .cornerRadius(40)
                .foregroundColor(.white)
                
                HStack{
                    Image(systemName: "person")
                        .font(.system(size: 40.0))
                    Text("Person")
                }
                .padding()
                .background(.gray)
                .cornerRadius(40)
                .foregroundColor(.white)
                
                HStack{
                    Image(systemName: "play")
                        .font(.system(size: 40.0))
                    Text("Play")
                }
                .padding()
                .background(.gray)
                .cornerRadius(40)
                .foregroundColor(.white)
                
                
            }
            
        }

    }
}

struct List_Previews: PreviewProvider {
    static var previews: some View {
        List()
    }
}
