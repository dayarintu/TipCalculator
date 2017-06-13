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
    
    
    @IBAction func calculateSplit(_ sender: Any) {
        let persons = Int(numberOfPersonsField.text!)
    
        let personShareAmount = Double(totalAmountLabel.text!)! / Double(persons!)
        
        perHeadLabel.text = String(personShareAmount)
        totalLabel.text = totalAmountLabel.text
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }

}
