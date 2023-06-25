//
//  TwitterMainScreen.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 25.06.2023.
//

import SwiftUI

struct TwitterMainScreen: View {
    var body: some View {
        VStack{
            TwitterHeader()
                .padding(.bottom)
            Divider()
      
            
            HStack{
                Image("koala")
                    .resizable()
                    .frame(width: 100, height: 100)
                
                VStack{
                    
                    HStack{
                        Text("Maximmilian")
                        
                        Text("@maxajobson")
                        
                        Text(".3h")
                    }
                    
                    Text("Y'all ready for this next post")
                    
                }
                
            }
            
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
