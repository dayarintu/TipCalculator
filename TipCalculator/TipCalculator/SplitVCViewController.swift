//
//  SplitVCViewController.swift
//  TipCalculator
//
//  Created by Daya on 6/13/17.
//  Copyright © 2017 Daya. All rights reserved.
//

import UIKit

class SplitVCViewController: ViewController {

    @IBOutlet weak var numberOfPersonsField: UITextField!
    
    
    @IBOutlet weak var totalField: UITextField!
    @IBOutlet weak var perHead: UITextField!

    
    var totalAmount = String()
    
    
    
    @IBAction func calculateSplit(_ sender: Any) {
        
        if let persons = (numberOfPersonsField.text),let personAmount = Double(totalAmount){
            let personShareAmount = Double(personAmount) / Double(persons)!
            perHead.text = String(personShareAmount)
                totalField.text = totalAmount
        }
        else {
            totalField.text = ""
        }
        }
  
        }


