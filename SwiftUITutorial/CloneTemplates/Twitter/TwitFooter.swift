//
//  TwitFooter.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 25.06.2023.
//

import SwiftUI

struct TwitFooter: View {
    
    var commentCount = ""
    var likeCount = ""
    var rtCount = ""
    var shareCount = ""
    
    var body: some View {
        HStack{
            Image(systemName: "bubble.right")
            Text(commentCount)
            
            Image(systemName: "pencil.and.outline")
            Text(rtCount)
            
            Image(systemName: "hand.thumbsup")
            Text(likeCount)
            
            Image(systemName: "square.and.arrow.up")
            Text(shareCount)
            
            Spacer()
        }
        .foregroundColor(.gray)
    }
}

struct TwitFooter_Previews: PreviewProvider {
    static var previews: some View {
        TwitFooter()
    }
}
