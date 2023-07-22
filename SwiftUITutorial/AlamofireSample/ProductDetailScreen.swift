//
//  ProductDetailScreen.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 22.07.2023.
//

import SwiftUI
import Alamofire

struct ProductDetailScreen: View {
    
    var id : Int = 0;
    @State var product : ProductModel = ProductModel()
    var body: some View {
        VStack{
            Text("Id: \(product.id)")
                .padding()
            
            Text("Name: \(product.name)")
                .padding()
            
            Text("Unit Price: \(product.unitPrice)")
                .padding()
            
            Text("Units In Stock: \(product.unitsInStock)")
                .padding()
            
            Text("Quantity Per Unit: \(product.quantityPerUnit)")
                .padding()
        }
        .onAppear(){
            
            let request = AF.request("https://northwind.vercel.app/api/products/\(id)")
            
            request.responseDecodable(of: ProductModel.self){response in
                product = response.value ?? ProductModel()
            }
            
        }
    }
}

