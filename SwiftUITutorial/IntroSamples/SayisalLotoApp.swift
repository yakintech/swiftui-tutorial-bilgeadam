//
//  SayisalLotoApp.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 24.06.2023.
//

import SwiftUI

struct SayisalLotoApp: View {
    
   @State var randomNumbers = [2,11,6,32,44,22]
    
    var body: some View {
        VStack{
            Text("Sayısal Loto")
                .font(.largeTitle)
                .padding()
            
            Button("Oluştur"){
                //butona tıkladığında 6 rastgele sayı oluştur.
                
                randomNumbers = []
                
                
                for _ in 1...6 {
                    let randomInt = Int.random(in: 1..<50)
                    
                    if(randomNumbers.contains(randomInt)){
                        
                    }
                    else{
                        randomNumbers.append(randomInt)
                    }
                }
                
               
            
            }
            
            HStack{
                ForEach(randomNumbers, id: \.self){item in
                    
                        Text(String(item))
                            .padding()
                }
            }
           
            
            Spacer()
        }
    }
}

struct SayisalLotoApp_Previews: PreviewProvider {
    static var previews: some View {
        SayisalLotoApp()
    }
}
