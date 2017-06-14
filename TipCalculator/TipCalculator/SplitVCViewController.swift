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
    
    @IBOutlet weak var perHeadLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    var totalAmount = String()
    
//    @IBAction func back(_ sender: Any) {
//        
//        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//            _ = segue.destination as! ViewController
//        }
//    }
    
    
    @IBAction func calculateSplit(_ sender: Any) {
        
        if let persons = (numberOfPersonsField.text) {
            if numberOfPersonsField.text != "" {
        var personShareAmount = Double(totalAmount)! / Double(persons)!
        
        perHeadLabel.text = String(personShareAmount)
        personShareAmount = Double(totalAmount)! / Double(persons)!
        totalLabel.text = totalAmount
    }
        }
        else {
            totalLabel.text = ""
        }
}
}
