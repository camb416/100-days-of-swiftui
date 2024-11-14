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
    
    @State private var currentScore = 0
    @State private var currentTries = 0
    let maxTries = 2 // TODO: this should be 9 (8 questions total)
    
    var body: some View{
        ZStack{
            // LinearGradient(colors: [.blue, .black], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 700)
            .ignoresSafeArea()
            
            VStack{
                Spacer()
         Text("Guess the Flag")
                    .foregroundStyle(.white)
                    .font(.largeTitle.weight(.bold))
            
            VStack(spacing: 15){
                
                VStack(){
                    Text("Tap the flag of")
                        .foregroundStyle(.secondary)
                        .font(.subheadline.weight(.heavy))
                    Text(countries[correctAnswer])
                        .font(.largeTitle.weight(.semibold))
                    
                }
                
                ForEach(0..<3) { number in
                    Button {
                        flagTapped(number)
                        
                    } label: {
                        Image(countries[number]).clipShape(.rect(cornerRadius: 5)).shadow(radius:5)
                    }
                }
            }
            
            .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 20))
                Spacer()
                Spacer()
                Text("Tries: \(currentTries) \nScore: \(currentScore)")
                    .foregroundStyle(.white)
                    .font(.title.bold())
                    .multilineTextAlignment(.center)
                Spacer()
                Spacer()
            }
            .padding()
            
       
            
        }.alert(scoreTitle, isPresented: $showingScore){
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is \(currentScore)")
        }
    }
    func flagTapped(_ number: Int){
        currentTries += 1
        if(currentTries>maxTries){
            // reset the game
            resetGame()
            return
        }
        if number == correctAnswer{
            currentScore += 1

            scoreTitle = "Corrent"
        } else {
            scoreTitle = "Wrong."
            // TODO: display the correct answer here
            
        }
        showingScore = true
    }
    
    func askQuestion(){
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
    }
    func resetGame(){
        currentTries = 0
        currentScore = 0
        // TODO: display an end game alert here.
    }
    
    

}

#Preview {
    ContentView()
}
