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
    

    @IBOutlet weak var totalAmountLabel: UILabel!
    
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
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        
        if let amount = Double(AmountTextField.text!) , let tip = Double(TipAmountTextField.text!) {
            let totalAmount = amount + tip
            totalAmountLabel.text = String(totalAmount)
        } else {
            AmountTextField.text = ""
        }
    }
    
}
    




