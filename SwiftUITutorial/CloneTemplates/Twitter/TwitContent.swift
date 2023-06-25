//
//  TwitContent.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 25.06.2023.
//

import SwiftUI

struct TwitContent: View {
    var content = ""
    
    var body: some View {
        HStack{
            Text(content)
            Spacer()
        }
    }
}

struct TwitContent_Previews: PreviewProvider {
    static var previews: some View {
        TwitContent()
    }
}
