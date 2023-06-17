//
//  Template1.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 17.06.2023.
//

import SwiftUI

struct Template1: View {
    var body: some View {
        VStack{
            
            HStack{
                Text("Friday, 15 Dec")
                Spacer()
                Text("Search")
            }
            .foregroundColor(.gray)
            
            HStack{
                Text("Learn")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                Spacer()
            }
            .padding(.top)
          
            HStack{
                Text("Choose the part of the body")
                Spacer()
            }
            
            
           
            VStack{
                HStack{
                    Text("Head & Face")
                        .font(.largeTitle)
                        .foregroundColor(.white)

                    Spacer()
                }
                .padding(.leading)
                
                HStack{
                    Text("11 diseases")
                        .foregroundColor(.white)
                    Spacer()
                }
                .padding(.leading)
        
            }
            .padding(.top,30)
            .padding(.bottom,30)
            .background(.red)
            .cornerRadius(25)
            
            
            VStack{
                HStack{
                    Text("Back & Neck")
                        .font(.largeTitle)
                        .foregroundColor(.white)

                    Spacer()
                }
                .padding(.leading)
                
                HStack{
                    Text("9 diseases")
                        .foregroundColor(.white)
                    Spacer()
                }
                .padding(.leading)
        
            }
            .padding(.top,30)
            .padding(.bottom,30)
            .background(.green)
            .cornerRadius(25)
            
            
            VStack{
                HStack{
                    Text("Back & Neck")
                        .font(.largeTitle)
                        .foregroundColor(.white)

                    Spacer()
                }
                .padding(.leading)
                
                HStack{
                    Text("9 diseases")
                        .foregroundColor(.white)
                    Spacer()
                }
                .padding(.leading)
        
            }
            .padding(.top,30)
            .padding(.bottom,30)
            .background(.yellow)
            .cornerRadius(25)
            
            
            VStack{
                HStack{
                    Text("Back & Neck")
                        .font(.largeTitle)
                        .foregroundColor(.white)

                    Spacer()
                }
                .padding(.leading)
                
                HStack{
                    Text("9 diseases")
                        .foregroundColor(.white)
                    Spacer()
                }
                .padding(.leading)
        
            }
            .padding(.top,30)
            .padding(.bottom,30)
            .background(.blue)
            .cornerRadius(25)
            
        
          
    
          
            
           
        
            Spacer()
            
        }
        .padding()
      
    }
}

struct Template1_Previews: PreviewProvider {
    static var previews: some View {
        Template1()
    }
}
