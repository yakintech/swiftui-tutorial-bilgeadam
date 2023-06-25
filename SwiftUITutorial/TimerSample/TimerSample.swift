//
//  TimerSample.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 24.06.2023.
//

import SwiftUI

struct TimerSample: View {
    
    @State var counter = 0
    
    let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
        counter = counter + 1
    }
    
    var body: some View {
        Text(String(c))
    }
}

struct TimerSample_Previews: PreviewProvider {
    static var previews: some View {
        TimerSample()
    }
}
