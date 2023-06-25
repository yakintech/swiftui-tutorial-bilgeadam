//
//  TwitterMainScreen.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 25.06.2023.
//

import SwiftUI

struct TwitterMainScreen: View {
    
    var twitModel1 = TwitModel(id: 1, profileImage: "koala", fullName: "Çağatay Yıldız", userName: "cagatayyildiz", twitContent: "SWIFT öğreniyorum pazar pazar :)", twitDate: "2h", commentCount: "4", rtCount: "10", likeCount: "20", shareCount: "3")
    
    var twitModel2 = TwitModel(id: 2, profileImage: "zebra", fullName: "Zebra Can", userName: "crazyzebra", twitContent: "Bıktım bu Afrikada'dan ", twitDate: "2h", commentCount: "1", rtCount: "10", likeCount: "20", shareCount: "3")
    
    var twitModel3 = TwitModel(id: 3, profileImage: "ayi", fullName: "Ayı John", userName: "ayijohn", twitContent: "Elmalar balıklar avlanırım çok severim! ", twitDate: "1h", commentCount: "11", rtCount: "130", likeCount: "220", shareCount: "13")
    
    
    var body: some View {
        VStack{
            TwitterHeader()
                .padding(.bottom)
            Divider()
      
            
           TwitBOX(twitModel: twitModel1)
            TwitBOX(twitModel: twitModel2)
            TwitBOX(twitModel: twitModel3)
            
    
            
            
            Spacer()
        }
        .padding()
    }
}

struct TwitterMainScreen_Previews: PreviewProvider {
    static var previews: some View {
        TwitterMainScreen()
    }
}
