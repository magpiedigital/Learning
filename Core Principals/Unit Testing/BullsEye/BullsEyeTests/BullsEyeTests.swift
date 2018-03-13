//
//  BullsEyeTests.swift
//  BullsEyeTests
//
//  Created by Hamish Johnson on 2018-03-13.
//  Copyright © 2018 Ray Wenderlich. All rights reserved.
//

import XCTest
@testable import BullsEye

class BullsEyeTests: XCTestCase {
    var gameUnderTest: BullsEyeGame!
    
    override func setUp() {
        super.setUp()
        gameUnderTest = BullsEyeGame()
        gameUnderTest.startNewGame()
    }
    
    override func tearDown() {
        gameUnderTest = nil

        super.tearDown()
    }
    
    func testScoreIsComputedWhenGuessGTTarget() {
        // 1. given
        let guess = gameUnderTest.targetValue + 5
        
        // 2. when
        _ = gameUnderTest.check(guess: guess)
        
        // 3. then
        XCTAssertEqual(gameUnderTest.scoreRound, 95, "Score computed from guess is wrong")
    }
    
    func testScoreIsComputedWhenGuessLTTarget() {
        // 1. given
        let guess = gameUnderTest.targetValue - 5
        
        // 2. when
        _ = gameUnderTest.check(guess: guess)
        
        // 3. then
        XCTAssertEqual(gameUnderTest.scoreRound, 95, "Score computed from guess is wrong")
    }
    
}
