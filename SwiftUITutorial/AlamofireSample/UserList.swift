//
//  UserList.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 18.07.2023.
//

import SwiftUI
import Alamofire

struct UserList: View {
    
    @State var users : [UserModel] = []
    
    var body: some View {
        VStack{
            ForEach(users, id:\.id){item in
                Text(item.email)
                    .padding()
                    .font(.largeTitle)
                    
            }
        }
        .onAppear(){
            let request = AF.request("https://jsonplaceholder.typicode.com/users")
            
            request.responseDecodable(of: [UserModel].self){response in
            
                users = response.value ?? []
            
            }
        }
    }
}


struct UserModel : Decodable{
    var id : Int = 0
    var name : String = ""
    var username : String = ""
    var email : String = ""
}
