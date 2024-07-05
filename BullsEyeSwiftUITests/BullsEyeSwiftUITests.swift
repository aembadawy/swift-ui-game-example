//
//  BullsEyeSwiftUITests.swift
//  BullsEyeSwiftUITests
//
//  Created by Aya Mahmoud on 05/07/2024.
//

import XCTest
@testable import BullsEyeSwiftUI

final class BullsEyeSwiftUITests: XCTestCase {

    var game: Game!
    
    override func setUpWithError() throws {
        game = Game()
    }

    override func tearDownWithError() throws {
        game = nil
    }

    func testScorePositive() {
        let score = game.target + 5
        XCTAssertEqual(game.getScoreFromSliderVal(score), 95)
    }

    func testScoreNegative() {
        let score = game.target - 5
        XCTAssertEqual(game.getScoreFromSliderVal(score), 95)
    }
}
