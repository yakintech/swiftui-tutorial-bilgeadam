//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 13.06.2023.
//

import SwiftUI

struct ContentView: View {
    
    

    var body: some View {
        VStack {
            NavigationView{
              MovieSearch()
            }
       
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
