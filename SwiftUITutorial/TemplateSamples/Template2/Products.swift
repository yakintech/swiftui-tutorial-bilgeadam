//
//  Products.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 17.06.2023.
//

import SwiftUI

struct Products: View {
    var body: some View {
        HStack(spacing: 20){
            VStack{
                ZStack{
                    Image("koala")
                        .resizable()
                        .frame(width: 200,height: 250)

                        Text("343 TL")
                            .padding()
                            .background(.white)
                            .cornerRadius(30)
                }
         
                
                HStack{
                    Text("Western Carabbaen")
                    Spacer()
                }
                
                HStack{
                    Text("New Orleans")
                    Spacer()
                    Text("5.5")
                }
            }
            .border(.red)
            VStack{
                ZStack{
                    Image("koala")
                        .resizable()
                        .frame(width: 200,height: 250)

                        Text("343 TL")
                            .padding()
                            .background(.white)
                            .cornerRadius(30)
                }
         
                
                HStack{
                    Text("Western Carabbaen")
                }
                
                HStack{
                    Text("New Orleans")
                }
            }
            .border(.red)
            VStack{
                ZStack{
                    Image("koala")
                        .resizable()
                        .frame(width: 200,height: 250)

                        Text("343 TL")
                            .padding()
                            .background(.white)
                            .cornerRadius(30)
                }
         
                
                HStack{
                    Text("Western Carabbaen")
                }
                
                HStack{
                    Text("New Orleans")
                }
            }
            .border(.red)
        }
    }
}

struct Products_Previews: PreviewProvider {
    static var previews: some View {
        Products()
    }
}
