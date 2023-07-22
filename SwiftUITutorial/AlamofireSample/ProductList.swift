//
//  ProductList.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 22.07.2023.
//

import SwiftUI
import Alamofire

struct ProductList: View {
    
    @State var products : [ProductModel] = []
    
    //her search işleminde mevcut state değişeceği için datanın orjinal halini bir state üzerinde tutuyorum.
    @State var originalProducts : [ProductModel] = []
    @State var search : String = ""
    
    @State var isSortedByName : Bool = false
    @State var isSortedByUnitPrice : Bool = false
    
    var body: some View {
        
        ScrollView {
            
            
            VStack{
                Text("Count: \(products.count)")
                
                TextField("Serach by name: ", text: $search)
                    .padding()
                    .border(.gray)
                    .onChange(of: search) { newValue in
                         
                        if search != "" {
                            products = originalProducts.filter({$0.name.lowercased().contains(search.lowercased())})
                        }
                     
                        }
                
                Button("Sort By Name"){
                    
                    //sorted metodu ile ürünleri name e göre sıraladım ve products state ime attım
                    
                    if isSortedByName {
                        products = products.sorted {
                            $1.name < $0.name
                        }
                        isSortedByName = false
                    }
                    else{
                        products = products.sorted {
                            $0.name < $1.name
                        }
                        isSortedByName = true
                    }
                 
                    
                }
                .padding()
                
                Button("Sort Unit Price"){
                    
                    
                    if isSortedByUnitPrice {
                        products = products.sorted {
                            $1.unitPrice < $0.unitPrice
                        }
                        isSortedByUnitPrice = false
                    }
                    else{
                        products = products.sorted {
                            $0.unitPrice < $1.unitPrice
                        }
                        isSortedByUnitPrice = true
                    }
                 
                    
                }
                .padding()
                
                
                ForEach(products, id:\.id){item in
                    
                    NavigationLink(destination: ProductDetailScreen(id: item.id)){
                        
                        Text(item.name + " " + String(item.unitPrice))
                            .padding()
                            .font(.largeTitle)
                     
                        
                    }
                    .foregroundColor(.black)
                    
                    Button("Delete"){
                        
                        AF.request("https://northwind.vercel.app/api/products/\(item.id)", method: .delete)
                            .responseData(){response in
                                
                                products = products.filter({$0.id != item.id})
                                
                            }
                        
                    }
                    .foregroundColor(.red)
                   
                }
                
            }
            .onAppear(){
                
             let request = AF.request("https://northwind.vercel.app/api/products")
            
                request.responseDecodable(of: [ProductModel].self){response in
                    
                    products = response.value ?? []
                    originalProducts = response.value ?? []
                }
            
            }
        }
      
    }
}

struct ProductList_Previews: PreviewProvider {
    static var previews: some View {
        ProductList()
    }
}




