//
//  ViewController.swift
//  Simple Calculater
//
//  Created by Kevin Donkers on 2016-02-02.
//  Copyright © 2016 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Outlets
    @IBOutlet weak var displayLabel: UILabel!
    
    //variables
    var num1 = 0.0, num2 = 0.0
    var operation = ""

    //Click event handlers for the number keys
    @IBAction func oneClicked(sender: UIButton) {
        //check if I reached the digit limit of the calculator
        if displayLabel.text?.characters.count < 6 {
            //if i am within the limit add a 1 to the display
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
    
    
    
    
    //add a decimal point to the display if there is room
    @IBAction func decimalClicked(sender: UIButton) {
        if displayLabel.text?.characters.count < 6 {
            displayLabel.text = displayLabel.text! + "."
        }
    }
    
    //clear the display
    @IBAction func clearClicked(sender: UIButton) {
        displayLabel.text = ""
    }
    
    
    //action handlers for the operations buttons
    @IBAction func AddClicked(sender: UIButton) {
        //set whatever number is on the screen when they click add to the first number of the equation nd clear the screen after
        num1 = (displayLabel.text! as NSString).doubleValue
        displayLabel.text = ""
        
        //set what operation im preforming for the equals button later
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

    //equal button action handler
    @IBAction func equalsClicked(sender: UIButton) {
        //use a number formmatter so that if a number has .0 at the end it does not display it but if it has decimal values they are displayed up to 5 digits
        let formatter = NSNumberFormatter()
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 5
        
        //set whatver is on the display as the second number
        num2 = (displayLabel.text! as NSString).doubleValue
        
        //determine what operation we are performing based on the variable we set eariler
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
        
        //reset both numbers and operation for the next equation
        num1 = 0
        num2 = 0
        operation = ""
    }





















}

