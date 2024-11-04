//
//  ContentView.swift
//  WeSplit
//
//  Created by Cameron Browning on 10/31/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    @FocusState private var amountIsFocused: Bool
    
    let tipPercentages = [10,15,20,25,0]
    
    
    var totalPerPerson: Double{
        // calculate the total per person here
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)
        let tipValue = checkAmount / 100.0 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
        
        return amountPerPerson
    }
    
    var body: some View {
        NavigationStack{
            
        
        Form{
            Section("How much was the bill?"){
                TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    .keyboardType(.decimalPad)
                    .focused($amountIsFocused)
                
                Picker("Number of people", selection: $numberOfPeople){
                    ForEach(2..<100) {
                        Text("\($0) people")
                    }
                }
                // .pickerStyle(.navigationLink)
            }
            
            Section("How much do you want to tip?") {
                // Text("How much do you want to tip?") // don't do this, looks like its own item
                Picker("Tip percentage", selection: $tipPercentage){
                    ForEach(tipPercentages, id: \.self){
                        Text($0, format: .percent)
                    }
                }.pickerStyle(.segmented)
            }
            
            Section("Here's how much everyone owes"){
                Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    .font(.largeTitle)
            }
        }.navigationTitle("🖖 WeSplit")
                .toolbar{
                    if amountIsFocused {
                        Button("Done"){
                            amountIsFocused = false
                        }
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
