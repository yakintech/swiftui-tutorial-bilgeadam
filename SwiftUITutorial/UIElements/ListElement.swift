//
//  ListElement.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 19.06.2023.
//

import SwiftUI

struct ListElement: View {
    
    var names = ["Çağatay", "Hasan", "Ayça", "İlayda"]
    
    var body: some View {
         
        Image(systemName: "star")
       }
}

struct ListElement_Previews: PreviewProvider {
    static var previews: some View {
        ListElement()
    }
}
