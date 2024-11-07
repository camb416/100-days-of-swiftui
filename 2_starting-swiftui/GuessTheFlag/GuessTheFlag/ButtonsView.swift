//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Cameron Browning on 11/6/24.
//

import SwiftUI

struct ButtonsView: View {
    var body: some View {
    
        Button("Regular Button"){}
        Button("Destructive Role", role: .destructive, action: executeDelete)
        Button("Bordered") {}
            .buttonStyle(.bordered)
        Button("Bordered Prominent"){}
            .buttonStyle(.borderedProminent)
        Button("Tinted"){}
            .buttonStyle(.borderedProminent)
            .tint(.mint)
        Button("Destructive Bordered Prominent", role: .destructive){}
            .buttonStyle(.borderedProminent)
        Button{
            print("Button tapped")
        } label: {
            Text("Custom")
                .padding()
                .foregroundStyle(.white)
                .background(.teal)
                .cornerRadius(30)
        }
        Button("System Image", systemImage: "pencil"){
            print("system image tapped")
        }
        Button{
            print("Custom tapped")
        } label: {
            Label("Custom Label", systemImage: "pencil")
                .padding()
                .foregroundStyle(.white)
                .background(.pink.gradient)
        }
        
    }
    
    func executeDelete(){
        print("Now deleting...")
    }
    
}

#Preview {
    ContentView()
}
