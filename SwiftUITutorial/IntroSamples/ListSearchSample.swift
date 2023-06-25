//
//  ListSearchSample.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 24.06.2023.
//

import SwiftUI

var data = ["Huawei", "Samsung", "Siemens", "Apple", "Vestel", "Nokia", "Lenovo", "Beko", "Arcelik", "Bosh", "Xaomi", "Oppo"]


struct ListSearchSample: View {
    
    
    @State var names : [String] =  data
    
    @State var search = ""
    
    var body: some View {
        VStack{
            
            TextField("Search by name: ", text: $search)
                .padding()
                .border(.black)
            
            Button("Search"){
     
                if(search == ""){
                    names = data
                }
                else{
                    names = data.filter({$0.contains(search)})
                }
                
     
            }
            
            ForEach(names, id: \.self){item in
                Text(item)
                    .padding()
         
            }
            
            Spacer()
            
        }
        .padding()
    }
}

struct ListSearchSample_Previews: PreviewProvider {
    static var previews: some View {
        ListSearchSample()
    }
}
