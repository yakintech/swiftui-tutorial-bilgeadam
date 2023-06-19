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
           List {
               Text("Item 1")
               Text("Item 2")
               Text("Item 3")
               Text("Item 4")
               Text("Item 5")
           }
       }
}

struct ListElement_Previews: PreviewProvider {
    static var previews: some View {
        ListElement()
    }
}
