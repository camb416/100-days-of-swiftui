//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Cameron Browning on 11/6/24.
//

import SwiftUI

struct ContentView: View {
    
    var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"]
    var correctAnswer = Int.random(in: 0...2)
    
    var body: some View{
        ZStack{
            Color.blue
                .ignoresSafeArea()
            VStack{
                
         
            VStack(spacing: 30){
                Text("Tap the flag of")
                Text(countries[correctAnswer])
            }
            ForEach(0..<3) { number in
                Button {
                    // flag was tapped
                    
                } label: {
                    Image(countries[number])
                }
            }
        }
        }
    }

}

#Preview {
    ContentView()
}
