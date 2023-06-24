//
//  ProductListSample.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 24.06.2023.
//

import SwiftUI

struct ProductListSample: View {
    
    @State var productName = ""
    
    @State var products : [String] = [];
    
    var body: some View {
    
        VStack{
            
            Text("Count: " + String(products.count))
                .padding()
                .font(.title)
            
            TextField("Product Name: ", text:$productName)
                .padding()
                .font(.largeTitle)
            
            Button("Add"){
                
                if(productName != ""){
                    
                    //aynı ürün varsa da eklemesin
                    var hasProduct = products.contains(productName)
                    
                    if(hasProduct == false){
                        products.append(productName)
                        productName = ""
                    }
                }
            }
            .padding()
            
            Button("Reverse"){
                products.reverse()
            }
            .padding()
            
            Button("Clear All"){
                products = []
            }
            
            ForEach(products, id: \.self){item in
                
                Text(item)
                    .font(.title)
                    .padding()
            }
            Spacer()
            
        }
        
    }
}

struct ProductListSample_Previews: PreviewProvider {
    static var previews: some View {
        ProductListSample()
    }
}

//Eğer text field a bir şey yazmadıysa eklemesin
//Aynı ürün varsa eklemesin!
//Kaç adet ürün olduğunu tepeye yaz
//bir buton koy ona tıkladığımda mevcut diziyi terse çevirsin ( REVERSE )
//Bir buton koy ona tıkladığımda dizinin TÜM ELEMANLARINI SİLSİN

