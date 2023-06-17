//
//  ImageElement.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 17.06.2023.
//

import SwiftUI

struct ImageElement: View {
    var body: some View {
        VStack{
            Image("koala")
                .resizable()
                .frame(width: 200, height: 400)
        }
    }
}

struct ImageElement_Previews: PreviewProvider {
    static var previews: some View {
        ImageElement()
    }
}
