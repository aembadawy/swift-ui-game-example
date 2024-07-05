//
//  ContentView.swift
//  BullsEyeSwiftUI
//
//  Created by Aya Mahmoud on 03/07/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isAlertVisiable: Bool = false
    @State private var sliderValue: Float = 50.0
    @State private var game: Game = Game()
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯")
            Text("Put the BullsEye as close as you can to")
                .bold()
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
                .kerning(2.0)
            
            Text(String(game.target))
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            
            HStack {
                Text("1")
                    .bold()
                Slider(value: self.$sliderValue,
                       in: 1.0...100.0)
                Text("100")
                    .bold()
            }
            Button("Hit Me") {
                isAlertVisiable = true
            }
            .alert(
                "Well played!",
                isPresented: $isAlertVisiable,//changes the state var to bining
                actions: { },
                message: {
                    let roundedVal = Int(sliderValue.rounded())
                    Text("""
                            You got \(roundedVal)!
                            And scored \(game.getScoreFromSliderVal(roundedVal))
                            """)}
            )
        }
        
    }
}

#Preview {
    ContentView()
}
