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
    
    
    var tipAmount = 0
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    
    
    
    
    @IBAction func TipPercent(_ sender: UISegmentedControl) {
        
        if AmountTextField != nil {
        var enterAmount = Double(Int(AmountTextField.text!)!)
        
        
        switch TipOutlet.selectedSegmentIndex {
        case 0:
            tipAmount = Int((enterAmount * 15.0) / Double(100))
            TipAmountTextField.text = String(tipAmount)
        case 1:
            tipAmount = Int((enterAmount * 20.0) / Double(100))
            TipAmountTextField.text = String(tipAmount)
        case 2:
            tipAmount = Int((enterAmount * 30.0) / Double(100))
            TipAmountTextField.text = String(tipAmount)
        default:
                break
        }
    }
        else {
            AmountTextField.text = "Enter an Amount"
        }
    }
    @IBAction func Calculate(_ sender: Any) {
    }
    
    

}

