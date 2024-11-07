//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Cameron Browning on 11/6/24.
//

import SwiftUI

struct ContentView: View {

    @State private var showingAlert = false
    @State private var showingSecondAlert = false

    var body: some View {
        Button("Show Alert"){
            showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert){
            Button("OK"){} // any button in an alert dismisses the alert, no action necessary
        }

        Button("Show Another Alert"){
            showingSecondAlert = true
        }
        .alert("Important Message", isPresented: $showingSecondAlert){
            Button("Delete", role: .destructive){}
            Button("Cancel", role: .cancel) {}
        } message: {
            Text("Please 🤩 read this.")
        }
    }

}

#Preview {
    ContentView()
}
