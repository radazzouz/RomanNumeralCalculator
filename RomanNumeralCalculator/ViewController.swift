//
//  ViewController.swift
//  RomanNumeralCalculator
//
//  Created by Chris on 2016-09-07.
//  Copyright © 2016 buddybuild. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var total: Int = 0
    var signOfNextOperation: Int = 1;

    func update() {
        //resultLabel.text = String(total)
        resultLabel.text = toRoman(total)
		if (resultLabel.text == "CLX") {
			BuddyBuildSDK.crash()
		}
    }


    func handleButton(_ value: Int) {
        total += value * signOfNextOperation
        update()
    }

    @IBOutlet weak var buttonI: UIButton!
    @IBOutlet weak var buttonV: UIButton!
    @IBOutlet weak var buttonX: UIButton!
    @IBOutlet weak var buttonL: UIButton!
    @IBOutlet weak var buttonC: UIButton!
    @IBOutlet weak var buttonD: UIButton!
    @IBOutlet weak var buttonM: UIButton!
    @IBOutlet weak var buttonPlus: UIButton!
    @IBOutlet weak var buttonMinus: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var buttonClear: UIButton!

    @IBAction func actionI(_ sender: AnyObject) {
        NSLog("handleButton 1")
        handleButton(1)
    }

    @IBAction func actionV(_ sender: AnyObject) {
        NSLog("handleButton 5")
        handleButton(5)
    }

    @IBAction func actionX(_ sender: AnyObject) {
        NSLog("handleButton 1")
        handleButton(10)
    }

    @IBAction func actionL(_ sender: AnyObject) {
        NSLog("handleButton 50")
        handleButton(50)
    }


    @IBAction func actionC(_ sender: AnyObject) {
        NSLog("handleButton 100")
        handleButton(100)
    }

    @IBAction func actionD(_ sender: AnyObject) {
        NSLog("handleButton 500")
        handleButton(500)
    }

    @IBAction func actionM(_ sender: AnyObject) {
        NSLog("handleButton 1000")
        handleButton(1000)
    }

    @IBAction func actionPlus(_ sender: AnyObject) {
        NSLog("+")
        signOfNextOperation = 1
    }

    @IBAction func actionMinus(_ sender: AnyObject) {
        NSLog("-")
        signOfNextOperation = -1
    }

    @IBAction func actionClear(_ sender: AnyObject) {
        NSLog("clear")
        total = 0
        update()
    }

}

