//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Cameron Browning on 11/6/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "US", "Ukraine"]
    @State private var correctAnswer = Int.random(in: 0...2)
    
    
    @State var showingScore = false
    @State private var scoreTitle = ""
    
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
                        flagTapped(number)
                        
                    } label: {
                        Image(countries[number])
                    }
                }
            }
            
        }.alert(scoreTitle, isPresented: $showingScore){
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is ???")
        }
    }
    func flagTapped(_ number: Int){
        if number == correctAnswer{
            scoreTitle = "Corrent"
        } else {
            scoreTitle = "Wrong."
        }
        showingScore = true
    }
    func askQuestion(){
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
    }
    
    

}

#Preview {
    ContentView()
}
