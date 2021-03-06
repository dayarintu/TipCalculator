//
//  ViewController.swift
//  TipCalculator
//
//  Created by Daya on 6/11/17.
//  Copyright © 2017 Daya. All rights reserved.
// 

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var AmountTextField: UITextField!
    
    @IBOutlet weak var TipAmountTextField: UITextField!
    
    @IBOutlet weak var TipOutlet: UISegmentedControl!
    
    @IBOutlet weak var totalAmountField: UITextField!
    
    @IBOutlet weak var gifview: UIImageView!


    override func viewDidLoad() {
        // once the view loads the GIF animation runs
        gifview.loadGif(name: "dollar")
    }
   
    @IBAction func clearButton(_ sender: Any) {
        
        AmountTextField.text = ""
        TipAmountTextField.text = ""
        totalAmountField.text = ""
        
        //TipPercentSelector(<#T##sender: UISegmentedControl##UISegmentedControl#>)
        //UISegmentedControlSegment.hashValue = 0
        TipOutlet.selectedSegmentIndex = -1
    }

    
    @IBAction func TipPercentSelector(_ sender: UISegmentedControl) {
        
        if let billAmount = Double(AmountTextField.text!) {
            switch TipOutlet.selectedSegmentIndex {
            case 0:
                TipAmountTextField.text = String((billAmount * 15.0) / 100.0)
                
            case 1:
                TipAmountTextField.text = String((billAmount * 20.0) / 100.0)

            case 2:
                TipAmountTextField.text = String((billAmount * 25.0) / 100.0)
            default:
                break
            }
        } else {
            AmountTextField.text = ""
        }
    }
    
    // fucntion to calculate the TIP
    
    @IBAction func calculateTip(_ sender: Any) {
        if AmountTextField.text != "" && TipAmountTextField.text != ""{
        calculateSound()
        }
            if let amount = Double(AmountTextField.text!) , let tip = Double(TipAmountTextField.text!) {
            let totalAmount = amount + tip
            totalAmountField.text = String(totalAmount)
        } else {
            AmountTextField.text = ""
        }
        
    }
    
}
    




