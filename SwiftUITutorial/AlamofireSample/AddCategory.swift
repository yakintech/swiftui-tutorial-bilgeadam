//
//  AddCategory.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 18.07.2023.
//

import SwiftUI
import Alamofire

struct AddCategory: View {
    
    @State var category: CategoryModel = CategoryModel()
    
    var body: some View {
        VStack{
            
            TextField("Name", text: $category.name)
                .padding()
            
            TextField("Description", text: $category.description)
                .padding()
            
            Button("Add"){
                
                let newCategory = [
                    "name" : category.name,
                    "description" : category.description
                ]
                
                //1. parametre request atacağım url
                //2. parametre request type ( default olarak GET olur fakat burada data göndereceğim için POST yaptım )
                //3. parametre ile ben datamı koyuyorum
                //4. parametre ile json göndereceğimi belirtiyorum
                
                
                let request = AF.request("https://northwind.vercel.app/api/categories", method: .post, parameters: newCategory, encoding: JSONEncoding.default )
                
                request.response{ res in
                    print(res)
                }
                
            }
            
        }
    }
}

struct AddCategory_Previews: PreviewProvider {
    static var previews: some View {
        AddCategory()
    }
}
