//
//  ContentView.swift
//  WeSplit
//
//  Created by Cameron Browning on 10/31/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var myVar: Int = 0
    
    var body: some View {
        NavigationStack {
           
     
        Form{
            Section{
                
                
                Text("Hello, World")
                Text("Hello, World")
            }
            Section{
                Text("Hello, World")
                Button("Tap me!") {
                    myVar += 1
                    print("Button was tapped \(myVar) times.")
                }
            }
            Section{
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
        }
        .padding()
        .navigationTitle("SwiftUI")
//        .navigationBarTitleDisplayMode(.inline)

        }
    }
}

#Preview {
    ContentView()
}
