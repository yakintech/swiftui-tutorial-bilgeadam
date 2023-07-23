//
//  MovieDetail.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 23.07.2023.
//

import SwiftUI
import Alamofire

struct MovieDetail: View {
    var movieId : String = ""
    @State var movie : MovieDetailModel = MovieDetailModel()
    
    var body: some View {
        VStack{
            
            AsyncImage(url: URL(string: movie.Poster))
            
            Text("Name: \(movie.Title)")
                .padding()
            
            Text("Year: \(movie.Year)")
                .padding()
            
            Text("Rated: \(movie.Rated)")
                .padding()
            
            Text("Released: \(movie.Released)")
                .padding()
            
            Text("Runtime: \(movie.Runtime)")
                .padding()
            
            Text("Genre: \(movie.Genre)")
                .padding()
            
            Text("Director: \(movie.Director)")
                .padding()
        }
        .onAppear(){
            let request = AF.request("https://www.omdbapi.com/?i=\(movieId)&apikey=80bca5f8")
            
            request.responseDecodable(of: MovieDetailModel.self){response in
           

                movie = response.value ?? MovieDetailModel()
            
            }
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail()
    }
}



struct MovieDetailModel : Decodable {
    var Title: String = ""
    var Year: String = ""
    var Rated: String = ""
    var Released: String = ""
    var Runtime: String = ""
    var Genre: String = ""
    var Director: String = ""
    var Poster : String = ""
}
