//
//  TwitLikeSample.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 25.06.2023.
//

import SwiftUI

struct TwitLikeSample: View {
    
    @State var likeCount = 20
    @State var isLike = false
    @State var likeIcon = "hand.thumbsup"
    
    var body: some View {
        VStack{
            
            Button{
               
                if(isLike == false){
                    likeCount = likeCount + 1
                    isLike = true
                    likeIcon = "hand.thumbsup.fill"
                }
                else{
                    likeCount = likeCount - 1
                    isLike = false
                    likeIcon = "hand.thumbsup"
                }
                
            }
            label:{
            Image(systemName: likeIcon)
                .font(.largeTitle)
                .padding()
            }
            .foregroundColor(.black)
           
            
            Text(String(likeCount))
                .font(.largeTitle)
                .padding()
        }
    }
}

struct TwitLikeSample_Previews: PreviewProvider {
    static var previews: some View {
        TwitLikeSample()
    }
}
