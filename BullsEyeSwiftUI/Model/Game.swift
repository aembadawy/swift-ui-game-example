//
//  Game.swift
//  BullsEyeSwiftUI
//
//  Created by Aya Mahmoud on 05/07/2024.
//

import Foundation

struct Game {
    var target: Int = Int.random(in: 1...100)
    var score: Int = 0
    var round: Int = 1
    
    func getScoreFromSliderVal(_ sliderValue: Int) -> Int {
        let diff = abs(target - sliderValue)
        return 100 - diff
    }
}
