//
//  TwitterHeader.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 25.06.2023.
//

import SwiftUI

struct TwitterHeader: View {
    var body: some View {
        VStack{
            
            HStack{
                Image(systemName: "star")
                Spacer()
                Image(systemName: "star")
                Spacer()
                Image(systemName: "star")
            }
            
        }
    }
}

struct TwitterHeader_Previews: PreviewProvider {
    static var previews: some View {
        TwitterHeader()
    }
}
