//
//  CounterParent.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 9.07.2023.
//

import SwiftUI

struct CounterParent: View {
    @State var counter = 0
    var body: some View {
        VStack{
            CounterChild(counter: $counter)
        }
    }
}

struct CounterParent_Previews: PreviewProvider {
    static var previews: some View {
        CounterParent()
    }
}
