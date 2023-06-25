//
//  StructSample.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 25.06.2023.
//

import SwiftUI

struct StructSample: View {
    
    @State var name : String = ""
    @State var unitPrice : String = ""
    
    @State var products : [Product] = []
    
    var body: some View {
        VStack{
            
            TextField("Name: ", text: $name)
                .padding()
                .border(.black)
            
            TextField("Unit Price: ", text: $unitPrice)
                .padding()
                .border(.black)
            
            Button("Add"){
                var randomId = Int.random(in: 1..<9999)
                
                var product = Product(id: randomId, name: name, unitPrice:  Double(unitPrice)!)
                
                
                products.append(product)
                
                name = ""
                unitPrice = ""
                
                
            }.padding()
            
            Button("Reverse"){
                products.reverse()
            }
            
            
            ForEach(products, id:\.id) { item in
                
                Text(item.name + " " + String(item.unitPrice))
                    .font(.largeTitle)
                
            }
            
            Spacer()
            
        }
        .padding()
    }
}

struct StructSample_Previews: PreviewProvider {
    static var previews: some View {
        StructSample()
    }
}



struct Product{
    var id : Int
    var name : String
    var unitPrice : Double
}
