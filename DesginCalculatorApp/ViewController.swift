//
//  ViewController.swift
//  DesginCalculatorApp
//
//  Created by Paul Awadalla on 7/12/19.
//  Copyright © 2019 Paul Awadalla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numbersOnScreen: Double = 0
    var perviousNumber: Double = 0
    var performingCalcalulations: Bool = false
    var mathOperations = 0;
    
    @IBOutlet weak var numberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    //function for the numbers in the calculator
    @IBAction func numbers(_ sender: Any)
    {
        if performingCalcalulations == true
        {
            numberLabel.text = numberLabel.text! + String((sender as AnyObject).tag - 1)
            numbersOnScreen = Double (numberLabel.text!)!
            performingCalcalulations = false
        }
            
        else
        {
            numberLabel.text = numberLabel.text! + String((sender as AnyObject).tag - 1)
            numbersOnScreen = Double (numberLabel.text!)!
        }
       
    }
    
    //function for the calculations
    //like add, subtract, divide and mutliple
    @IBAction func buttons(_ sender: Any)
    {
        if numberLabel.text != "" && (sender as AnyObject).tag != 11 && (sender as AnyObject).tag != 16
        {
            perviousNumber = Double(numberLabel.text!)!
            //divde
            if (sender as AnyObject).tag == 12
            {
                numberLabel.text = "/"
            }
            
            //mutliply
            else if (sender as AnyObject).tag == 13
            {
                numberLabel.text = "x"
            }
            
            //subtract
            else if (sender as AnyObject).tag == 14
            {
                numberLabel.text = "-"
            }
            
            //add
            else if (sender as AnyObject).tag == 15
            {
                numberLabel.text = "+"
            }
            else if (sender as AnyObject).tag == 17
            {
                numberLabel.text = "%"
            }
            mathOperations = (sender as AnyObject).tag
            performingCalcalulations = true
        }
        else if (sender as AnyObject).tag == 16
        {
            if mathOperations == 12
            {
                numberLabel.text = String(perviousNumber / numbersOnScreen)
            }
            else if mathOperations == 13
            {
                numberLabel.text = String(perviousNumber * numbersOnScreen)
            }
            else if mathOperations == 14
            {
                numberLabel.text = String(perviousNumber - numbersOnScreen)
            }
            else if mathOperations == 15
            {
                numberLabel.text = String(perviousNumber + numbersOnScreen)
            }
            
        }
       
        else if (sender as AnyObject).tag == 11
        {
            numberLabel.text = "0";
            perviousNumber = 0;
            numbersOnScreen = 0;
            mathOperations = 0;
        }
    }
    
    
}

