//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Cameron Browning on 11/6/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .trailing, spacing:20){ // use leading/trailing instead of left/right because i18n
            Spacer()
            
            Text("Hello, World!")
            Text("Foo")
            
            Spacer() // this fills the rest of the space
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
