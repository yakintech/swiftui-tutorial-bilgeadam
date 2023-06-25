//
//  TwitBOX.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 25.06.2023.
//

import SwiftUI

struct TwitBOX: View {
    
    var twitModel = TwitModel()
    
    var body: some View {
       
        HStack{
            Image(twitModel.profileImage)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(150)
       
            
            VStack{
                
                TwitUserHeader(fullname: twitModel.fullName ,username: twitModel.userName, twitDate: twitModel.twitDate)
                
                TwitContent(content: twitModel.twitContent)
                
                TwitFooter(commentCount: twitModel.commentCount, likeCount:twitModel.likeCount, rtCount: twitModel.rtCount, shareCount: twitModel.shareCount)
                
            }
            
        }
    }
}

struct TwitBOX_Previews: PreviewProvider {
    static var previews: some View {
        TwitBOX()
    }
}
