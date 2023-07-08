//
//  CounterSample.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 8.07.2023.
//

import SwiftUI

struct CounterSample: View {
    
    @State var counter : Int =  UserDefaults.standard.integer(forKey: "counter")
    
    @State var lastData : Int =  UserDefaults.standard.integer(forKey: "counter")
     
    var body: some View {
        VStack{
            Button("Counter:  \(counter)"){
                counter = counter + 1
                
                //burada datayı telefon hafızasına set ediyor. ( kaydediyoruz )
                UserDefaults.standard.set(self.counter, forKey: "counter")
            }
            .font(.largeTitle)
             
            
            Button("Show storage Data"){
                
                //( storage kaydettiğimiz data bir integer data olduğu için onu int olarak alıp bir değere atıyoruz)
                lastData = UserDefaults.standard.integer(forKey: "counter")
            }
            .padding()
            .font(.largeTitle)
            
            Text(String(lastData))
                .padding()
                .font(.largeTitle)
            
        }
    }
}

struct CounterSample_Previews: PreviewProvider {
    static var previews: some View {
        CounterSample()
    }
}
