//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Han Chen on 5/31/16.
//  Copyright © 2016 Han Chen. All rights reserved.
//
import UIKit
import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    // MARK: FoodTracker Tests
    
    func testMealInitialization() {
        let potentialItem = Meal(name: "Foo", rating: 5, photo: nil)
        XCTAssertNotNil(potentialItem)
        
        let noName = Meal(name: "", rating: 5, photo: nil)
        XCTAssertNil(noName, "Empty name is invalid")
        
        let badRating = Meal(name: "Really bad rating", rating: -1, photo: nil)
        XCTAssertNil(badRating)
    }
}
