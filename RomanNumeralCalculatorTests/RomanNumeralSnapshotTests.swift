//
//  RomanNumeralSnapshotTests.swift
//  RomanNumeralCalculator
//
//  Created by Chris on 2016-09-13.
//  Copyright © 2016 buddybuild. All rights reserved.
//

import FBSnapshotTestCase

@testable import RomanNumeralCalculator

class RomanNumeralSnapshotTests: FBSnapshotTestCase {

    override func setUp() {
        super.setUp()
        //recordMode = true
    }

    override func tearDown() {
        super.tearDown()
    }

    func testSnapshot() {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! ViewController
        FBSnapshotVerifyView(vc.view)
        FBSnapshotVerifyLayer(vc.view.layer)
    }
}