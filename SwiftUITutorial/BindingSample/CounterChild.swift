//
//  CounterChild.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 9.07.2023.
//

import SwiftUI

struct CounterChild: View {
    @Binding var counter : Int
    var body: some View {
        Text("Counter: \(counter)")
            .padding()
        
        Button("Increase"){
            counter = counter + 1
        }
    }
}

