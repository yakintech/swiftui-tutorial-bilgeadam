//
//  MovieSearch.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 23.07.2023.
//

import SwiftUI
import Alamofire

struct MovieSearch: View {
    
    @State var data : SearchModel = SearchModel()
    @State var movieName : String = ""
    
    var body: some View {
        
        ScrollView{
            
            VStack{
                TextField("Movie name: ", text: $movieName)
                    .padding()
                    .border(.gray)
                
                Button("Search "){
                    
                    if movieName != "" {
                        
                        let searchWords = movieName.split(separator: " ")
                       
                        var searchKey = ""
                        
                        if searchWords.count > 1 {
                            for item in searchWords{
                                searchKey = searchKey + item + "+"
                            }

                          searchKey = String(searchKey.dropLast())
              
                        }
                        else{
                            searchKey = String(searchWords[0])
                        }
                        
                      
                        let request = AF.request("https://www.omdbapi.com/?apikey=80bca5f8&s=\(searchKey)")
                        
                        request.responseDecodable(of: SearchModel.self){response in
                       

                        data = response.value ?? SearchModel()
                        
                        }
                    }
             
                }
                .padding()
                
              
                
                
                ForEach(data.Search, id:\.imdbID){item in
                    
                    NavigationLink(destination: MovieDetail(movieId: item.imdbID)){
                        VStack{
                            Text("Name: \(item.Title)")
                                .font(.largeTitle)
                            
                            Text("Year: \(item.Year)")
                                .font(.largeTitle)
                            
                            AsyncImage(url: URL(string: item.Poster))
                            
                            Divider()
                        }
                    
                    }
                    
                

                        
                }
                
                Spacer()
            }
            .padding()
        }
       
        
    }
}

struct MovieSearch_Previews: PreviewProvider {
    static var previews: some View {
        MovieSearch()
    }
}


struct SearchModel : Decodable{
    var Search : [MovieModel] = []
    var totalResults : String = "0"
    var Response : String = ""
}

struct MovieModel : Decodable{
    var Title : String = ""
    var Year : String = ""
    var imdbID : String = ""
    var Poster : String = ""
}


