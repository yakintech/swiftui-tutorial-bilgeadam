//
//  CategoryList.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 18.07.2023.
//

import SwiftUI
import Alamofire

struct CategoryList: View {
    
    @State var categories : [CategoryModel] = []
    
    var body: some View {
        VStack{
            
            Text("Count: " + String(categories.count))
                .font(.largeTitle)
                .padding()
            ForEach(categories, id:\.id){item in
                Text(item.name)
                    .padding()
                    .font(.largeTitle)
                    
            }
        }
        .onAppear(){
            let request = AF.request("https://northwind.vercel.app/api/categories")
            
            request.responseDecodable(of: [CategoryModel].self){response in
            
                categories = response.value ?? []
            
            }
            
           
        }
    }
}



struct CategoryModel : Decodable{
    var id: Int = 0
    var name : String = ""
    var description : String = ""
}
