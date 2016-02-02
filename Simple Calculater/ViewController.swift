//
//  ViewController.swift
//  Simple Calculater
//
//  Created by student on 2016-02-02.
//  Copyright © 2016 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var displayLabel: UILabel!
    
    var num1 = 0.0, num2 = 0.0
    var operation = ""

    @IBAction func oneClicked(sender: UIButton) {
        if displayLabel.text?.characters.count < 6 {
            displayLabel.text = displayLabel.text! + "1"
        }
    }

    @IBAction func twoClicked(sender: UIButton) {
        if displayLabel.text?.characters.count < 6 {
            displayLabel.text = displayLabel.text! + "2"
        }
    }
    
    @IBAction func threeClicked(sender: UIButton) {
        if displayLabel.text?.characters.count < 6 {
            displayLabel.text = displayLabel.text! + "3"
        }
    }

    @IBAction func fourClicked(sender: UIButton) {
        if displayLabel.text?.characters.count < 6 {
            displayLabel.text = displayLabel.text! + "4"
        }
    }

    @IBAction func fiveClicked(sender: UIButton) {
        if displayLabel.text?.characters.count < 6 {
            displayLabel.text = displayLabel.text! + "5"
        }
    }

    @IBAction func sixClicked(sender: UIButton) {
        if displayLabel.text?.characters.count < 6 {
            displayLabel.text = displayLabel.text! + "6"
        }
    }

    @IBAction func sevenClicked(sender: UIButton) {
        if displayLabel.text?.characters.count < 6 {
            displayLabel.text = displayLabel.text! + "7"
        }
    }

    @IBAction func eightClicked(sender: UIButton) {
        if displayLabel.text?.characters.count < 6 {
            displayLabel.text = displayLabel.text! + "8"
        }
    }

    @IBAction func nineClicked(sender: UIButton) {
        if displayLabel.text?.characters.count < 6 {
            displayLabel.text = displayLabel.text! + "9"
        }
    }

    @IBAction func zeroClicked(sender: UIButton) {
        if displayLabel.text?.characters.count < 6 {
            displayLabel.text = displayLabel.text! + "0"
        }
    }
    
    @IBAction func decimalClicked(sender: UIButton) {
        if displayLabel.text?.characters.count < 6 {
            displayLabel.text = displayLabel.text! + "."
        }
    }
    
    @IBAction func clearClicked(sender: UIButton) {
        displayLabel.text = ""
    }

    @IBAction func AddClicked(sender: UIButton) {
        num1 = (displayLabel.text! as NSString).doubleValue
        displayLabel.text = ""
        
        operation = "+"
    }

    @IBAction func subtractClicked(sender: UIButton) {
        num1 = (displayLabel.text! as NSString).doubleValue
        displayLabel.text = ""
        
        operation = "-"
    }

    @IBAction func multplyClicked(sender: UIButton) {
        num1 = (displayLabel.text! as NSString).doubleValue
        displayLabel.text = ""
        
        operation = "*"
    }

    @IBAction func divideClicked(sender: UIButton) {
        num1 = (displayLabel.text! as NSString).doubleValue
        displayLabel.text = ""
        
        operation = "/"
    }

    @IBAction func equalsClicked(sender: UIButton) {
        let formatter = NSNumberFormatter()
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 5
        
        num2 = (displayLabel.text! as NSString).doubleValue
        
        switch (operation){
        case ("+"):
            displayLabel.text = formatter.stringFromNumber(num1 + num2)
        case ("-"):
            displayLabel.text = formatter.stringFromNumber(num1 - num2)
        case ("*"):
            displayLabel.text = formatter.stringFromNumber(num1 * num2)
        case ("/"):
            displayLabel.text = formatter.stringFromNumber(num1 / num2)
        default:
            displayLabel.text = "Error"
        }
    }





















}

