//
//  SupplierList.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 23.07.2023.
//

import SwiftUI
import Alamofire

struct SupplierList: View {
    
    @State var suppliers : [SupplierModel] = []
    
    var body: some View {
        VStack{
            
        }
        .onAppear(){
            let request = AF.request("https://northwind.vercel.app/api/suppliers")
            
            request.responseDecodable(of: [SupplierModel].self){response in
            
                
                suppliers = response.value ?? []
            
            }
        }
    }
}

struct SupplierList_Previews: PreviewProvider {
    static var previews: some View {
        SupplierList()
    }
}



struct SupplierModel : Decodable{
    var id : Int = 0
    var companyName : String = ""
    var contactName : String = ""
}

//QUERY STRING!!!!!
//http://www.omdbapi.com/?apikey=80bca5f8&s=batman
