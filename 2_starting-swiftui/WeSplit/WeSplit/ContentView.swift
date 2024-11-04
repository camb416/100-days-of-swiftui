//
//  ContentView.swift
//  WeSplit
//
//  Created by Cameron Browning on 10/31/24.
//

import SwiftUI

struct ContentView: View {
    let students = ["Harry", "Hermione", "Ron"]

    @State private var myVar: Int = 0 // one way binding
    @State private var selectedStudent = "Harry"
    @State private var name = ""
    
    
    var body: some View {
        NavigationStack {
           
     
        Form{
            
            Section{
              
                    Picker("Select your student", selection: $selectedStudent){
                        Text("Cam")
                        ForEach(students, id: \.self) {
                            Text($0)
                        }
                    }
            }
            
            Section{
                
                TextField("Enter Your name", text: $name) // $ two-way binding
                Text("Your name is \(name)")
            }
            Section{
                ForEach(0..<10) {
                        Text("Row \($0)")
                }
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
