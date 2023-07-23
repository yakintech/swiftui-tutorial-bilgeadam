//
//  TodoListSample.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 23.07.2023.
//

import SwiftUI

struct TodoListSample: View {
    
    @State var posts : [Post] = []
    
    
    var body: some View {
        ScrollView{
            VStack{
                
                ForEach(posts, id:\.id){item in
                    Text(item.title)
                        .padding()
                }
                
            }
            .onAppear(){
                let apiURLString : String = "https://jsonplaceholder.typicode.com/posts";
                
                guard let apiUrl = URL(string: apiURLString) else {
                    return
                }
                
                let session = URLSession.shared
                
                let dataTask = session.dataTask(with: apiUrl) { (data, response, error) in
                    
                    do {
                        
                        let decoder = JSONDecoder()
                        posts = try decoder.decode([Post].self, from: data!)
                            
                 
                    } catch {
                        print("Error parsing JSON: \(error)")
                    }
                    
                }
                dataTask.resume()
            }
        }

    }
}

struct TodoListSample_Previews: PreviewProvider {
    static var previews: some View {
        TodoListSample()
    }
}

struct Post: Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
