//
//  TicTacToeGame.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 25.06.2023.
//

import SwiftUI

struct TicTacToeGame: View {
    
    @State var isFirstUser = true
    @State var boxes = ["","","","","","","","",""]
    @State var counter = 0
    var body: some View {
        VStack{

                ForEach(1..<4) { i in
                    
               
                    
                    HStack{
                        ForEach(1..<4){j in
                      
                            Button{
                                
                                if(isFirstUser){
                                    //x basacak
                                    isFirstUser = false
                                }
                                else{
                                    //o basacak
                                    isFirstUser = true
                                }
                            }
                            label:{
                            Text(String(counter))
                                .frame(width: 120, height: 120)
                                .border(Color.black, width: 10)
                            }
                           
                        }
                    }
                  
                   
                }

        }
        .font(.largeTitle)
    }
}

struct TicTacToeGame_Previews: PreviewProvider {
    static var previews: some View {
        TicTacToeGame()
    }
}
