//
//  Header.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 17.06.2023.
//

import SwiftUI

struct Header: View {
    
    
    var body: some View {
    
        HStack{
            Image("koala")
                .resizable()
                .frame(width: 80)
                .cornerRadius(40)
            
                
            VStack{
                Text("Welcome Back")
                    .foregroundColor(.gray)
                    .padding(.top,25)
                
                Spacer()
                Text("Mia White")
                    .font(.title)
                    .padding(.bottom,10)
            }
            .padding(.leading,10)
            
            Spacer()
            
            Image(systemName: "alarm")
                .font(.system(size: 40.0))
        }
        .frame(height: 100)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
