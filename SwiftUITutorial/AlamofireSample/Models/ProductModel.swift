//
//  ProductModel.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 22.07.2023.
//

import Foundation


struct ProductModel : Decodable{
    var id : Int = 0
    var name : String = ""
    var unitPrice : Double = 0.0
    var unitsInStock : Int = 0
    var quantityPerUnit : String = ""
    var unitsOnOrder : Int = 0
    
}
