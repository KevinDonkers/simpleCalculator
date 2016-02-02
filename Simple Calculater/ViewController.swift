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






}

