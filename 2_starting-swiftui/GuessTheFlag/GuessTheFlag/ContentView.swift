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
            // LinearGradient(colors: [.blue, .black], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 400)
            .ignoresSafeArea()
            VStack{
                
                VStack(spacing: 15){
                    Text("Tap the flag of").font(.subheadline.weight(.heavy))
                    Text(countries[correctAnswer]).font(.largeTitle.weight(.semibold))
                }
                ForEach(0..<3) { number in
                    Button {
                        flagTapped(number)
                        
                    } label: {
                        Image(countries[number]).clipShape(.capsule).shadow(radius:5)
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
