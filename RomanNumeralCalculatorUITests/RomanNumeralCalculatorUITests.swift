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
        continueAfterFailure = true
        
        // This needs to be added to record a view of each UI test. 
        // IMPORTANT: It is important to use a single instance of XCUIApplication.
        let app = XCUIApplication()
        app.launchArguments.append("BUDDYBUILD_UI_TESTS_VIDEO_RECORDING")
        app.launch()
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
        // This needs to be added to record a view of each UI test
        XCUIDevice().press(.home)
        sleep(1) // Leave this to 1 second for now. To be sure it works on VMs
        
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
