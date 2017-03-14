//
//  RomanNumeralCalculatorUITests.swift
//  RomanNumeralCalculatorUITests
//
//  Created by Chris on 2016-09-07.
//  Copyright © 2016 buddybuild. All rights reserved.
//

import XCTest

class RomanNumeralCalculatorUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // It is important to set continueAfterFailure to true. Otherwise, the video will be properly generated, as the app get SIGKILL'd if a test fails
        continueAfterFailure = false
        XCUIApplication().launch()
        BuddyBuildSDK.startUITestsVideoRecording()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.

        BuddyBuildSDK.stopUITestsVideoRecording()
        super.tearDown()
    }
    
    func testOnePlusOne() {
        // Use recording to get started writing UI tests.
        XCUIDevice.shared().orientation = .portrait
        
        let app = XCUIApplication()
        app.buttons["Clear"].tap()
        
        let iButton = app.buttons["I"]
        iButton.tap()
        app.buttons["+"].tap()
        iButton.tap()

        let label = app.staticTexts["calculated_value"]
        let exists = NSPredicate(format: "label == 'II'")

        expectation(for: exists, evaluatedWith: label, handler: nil)
        waitForExpectations(timeout: 30, handler: nil)
   }
    func testOnePlusOnePlusOne() {
        // Use recording to get started writing UI tests.
        XCUIDevice.shared().orientation = .portrait
        
        let app = XCUIApplication()
        app.buttons["Clear"].tap()
        
        let iButton = app.buttons["I"]
        iButton.tap()
        app.buttons["+"].tap()
        iButton.tap()
        app.buttons["+"].tap()
        iButton.tap()
        
//        let label = app.staticTexts["calculated_value"]
//        let exists = NSPredicate(format: "label == 'III'")
//        
//        expectation(for: exists, evaluatedWith: label, handler: nil)
//        waitForExpectations(timeout: 30, handler: nil)
    }
}
