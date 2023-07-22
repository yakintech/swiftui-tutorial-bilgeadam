//
//  AddProductScreen.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 22.07.2023.
//

import SwiftUI
import Alamofire

struct AddProductScreen: View {
    @State var productModel: ProductModel = ProductModel()
    var body: some View {
        VStack{
            
            TextField("Name ", text: $productModel.name)
                .padding()
                .border(.black)
             
            Button("Add"){
                
                let newProduct = [
                    "name" : productModel.name,
                ]
                
                let request = AF.request("https://northwind.vercel.app/api/products", method: .post, parameters: newProduct, encoding: JSONEncoding.default )
                
                request.response{ res in
                    print(res)
                }
            }
           
            
        }
    }
}

struct AddProductScreen_Previews: PreviewProvider {
    static var previews: some View {
        AddProductScreen()
    }
}
