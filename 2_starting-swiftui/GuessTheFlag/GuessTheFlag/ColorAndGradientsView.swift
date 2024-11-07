//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Cameron Browning on 11/6/24.
//

import SwiftUI

struct ColorAndGradientsView: View {
    var body: some View {
//        VStack(alignment: .trailing, spacing:20){ // use leading/trailing instead of left/right because i18n
//            Spacer()
//            
//            Text("Hello, World!")
//            Text("Foo")
//            
//            Spacer() // this fills the rest of the space
//            
//            Spacer()
//        }
        
        // red just behind the text (z-stack is auto-sized and placed)
//        ZStack{
//            Text("Your Content")
//        }.background(.red)

        // full red background
//        ZStack{
//            Color.red
//            Text("Your Content")
//        }.ignoresSafeArea()
//        
      
//        // parameters on Color sizes
//        ZStack{
//            Color.red
//                .frame(width:200, height: 200)
//            
//            Color.blue
//                .frame(minWidth: 300, maxWidth: .infinity, maxHeight: 150)
//        }
       
        // ultrathin materials, plus rounded corners
//        ZStack{
//            VStack(spacing: 0){
//                Color.red
//                Color.blue
//            }
//            
//            Text("Your Content")
//                .foregroundStyle(.secondary)
//                .padding(50)
//                .background(.ultraThinMaterial)
//                .cornerRadius(15)
//                
//        }.ignoresSafeArea()
        ZStack{
            
            
            VStack{
                
                LinearGradient(colors: [.white, .black], startPoint: .top, endPoint: .bottom)
                
                LinearGradient(stops: [
                    Gradient.Stop(color: .white, location: 0.45),
                    Gradient.Stop(color: .black, location: 0.55),
                ], startPoint: .top, endPoint: .bottom)
                // alternative shortcut, Siwft knows its a Gradient.Stop
                //        LinearGradient(stops: [
                //            .init(color: .white, location: 0.45),
                //            .init(color: .black, location: 0.55),
                //        ], startPoint: .top, endPoint: .bottom)
                
                RadialGradient(colors: [.blue, .black], center: .center, startRadius: 20, endRadius: 200)
                AngularGradient(colors: [.red, .yellow, .green, .blue, .purple, .red], center: .center)
                Text("World!")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .foregroundStyle(.white)
                    .background(.red.gradient)
                
            }
            VStack{
                Spacer()
                Spacer()
                Text("Hello,")
                    .foregroundStyle(.secondary)
                    .padding(50)
                    .background(.ultraThinMaterial)
                    .cornerRadius(15)
                Spacer()
            }

        }
    }
    
}

#Preview {
    ContentView()
}
