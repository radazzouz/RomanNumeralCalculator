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
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        XCUIDevice().press(.home)
        sleep(10)
        super.tearDown()
    }
    
    func testOnePlusOne() {
        // Use recording to get started writing UI tests.
        XCUIDevice.shared().orientation = .portrait
        
        let app = XCUIApplication()
        XCUIDevice.shared().orientation = .portrait
        XCUIApplication().buttons["Clear"].tap()
        
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
        XCUIDevice.shared().orientation = .portrait
        XCUIApplication().buttons["Clear"].tap()
        
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
