//
//  ContentView.swift
//  UnitConverter
//
//  Created by Cameron Browning on 11/4/24.
//

import SwiftUI

struct Unit{
    var name:String
    var symbol:String
}

struct ContentView: View {
    

    let units = [Unit(name:"Fahrenheit", symbol:"°F"),Unit(name:"Celsius", symbol: "°C"),Unit(name:"Kelvin", symbol:"K")]
    
    @State private var activeUnits = [Unit(name:"Celsius", symbol: "°C"),Unit(name:"Kelvin", symbol:"K")]
    
    @State private var sourceTemp:Double = 68.0
    @State var currentSourceUnit:Int = 0
        
    
    @State var currentDestUnit = 0
    
       
    
    private var convertedTemp:Double{
    
        
        var kelvinTemp:Double = sourceTemp

        switch(units[currentSourceUnit].name){
        case "Celsius":
            kelvinTemp += 273.15
        case "Fahrenheit":
            kelvinTemp = (kelvinTemp - 32.0) * 5.0/9.0 + 273.15
        default:
            break
        }
        
        
        switch(activeUnits[currentDestUnit].name){
        case "Celsius":
            return kelvinTemp - 273.15
        case "Fahrenheit":
            return (kelvinTemp - 273.15) * 9.0/5.0 + 32.0
        default:
            return kelvinTemp
        }
        
    }
    
    
    
    
    var body: some View {
        
        NavigationView{
            Form{
                Section("Source Temperature"){
                    HStack{
                        TextField("Units in \(units[currentSourceUnit].name)", value: $sourceTemp, formatter:NumberFormatter())
                            .keyboardType(.decimalPad)
                        Picker("Units to Convert", selection: $currentSourceUnit){
                            ForEach(0..<3){
                                Text(units[$0].symbol)
                            }
                        }
                        .labelsHidden()
                    }
                    
                }
                Section("Converted Temperature"){
                    Picker("Units to Convert", selection: $currentDestUnit){
                        ForEach(0..<2){
                            Text(activeUnits[$0].name)
                        }
                    }.pickerStyle(.segmented)
                    Text("\(convertedTemp, specifier: "%.1f")\(activeUnits[currentDestUnit].symbol)")
                        .font(.largeTitle)
                }
            }.navigationTitle("🌡️ Temp Converter")
        }
        
        .onChange(of: currentSourceUnit, initial: true){ oldUnit, newUnit in
            switch(newUnit){
            case 1:
                activeUnits = [Unit(name:"Fahrenheit", symbol:"°F"),Unit(name:"Kelvin", symbol:"K")]
            case 0:
                activeUnits = [Unit(name:"Celsius", symbol:"°C"),Unit(name:"Kelvin", symbol:"K")]
            case 2:
                activeUnits = [Unit(name:"Celsius", symbol:"°C"),Unit(name:"Fahrenheit", symbol:"°F")]
            default:
                break
            }
        }
        
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
//        }
//        .padding()
    }
    
    
    
}


#Preview {
    ContentView()
}
