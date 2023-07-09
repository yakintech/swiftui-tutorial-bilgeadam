//
//  Detail.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 9.07.2023.
//

import SwiftUI

struct Detail: View {
    
    var name = ""
    
    var body: some View {
        Text(name)
            .font(.largeTitle)
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Detail()
    }
}
