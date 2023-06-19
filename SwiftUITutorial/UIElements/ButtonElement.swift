//
//  ButtonElement.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 19.06.2023.
//

import SwiftUI

struct ButtonElement: View {
    var body: some View {
        VStack{
            Button("Print Hello"){
                print("!!!!")
            }
        }
    }
}

struct ButtonElement_Previews: PreviewProvider {
    static var previews: some View {
        ButtonElement()
    }
}
