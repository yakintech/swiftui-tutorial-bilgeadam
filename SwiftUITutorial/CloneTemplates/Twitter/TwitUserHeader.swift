//
//  TwitUserHeader.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 25.06.2023.
//

import SwiftUI

struct TwitUserHeader: View {
    
    var fullname = ""
    var username = ""
    var twitDate = ""
    
    var body: some View {
        HStack{
            
            Text(fullname)
            Text(username)
                .foregroundColor(.gray)
            Text(twitDate)
                .foregroundColor(.gray)
            
            Spacer()
          
        }
    }
}

struct TwitUserHeader_Previews: PreviewProvider {
    static var previews: some View {
        TwitUserHeader()
    }
}
