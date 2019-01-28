//
//  ViewController.swift
//  TipCalculator
//
//  Created by Joseph Shimonov on 1/25/19.
//  Copyright © 2019 Joseph Shimonov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var splitTipLabel: UILabel!
    @IBOutlet weak var tipDivider: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // Get the bill amount
        let bill = Double (billField.text!) ?? 0
        
        // Calculate the tip and total amount
        let tipPercentages = [0.15, 0.18, 0.20]
        let tipAmount = [1, 2, 3, 4, 5]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let tipPerPerson = tip/(Double)(tipAmount[tipDivider.selectedSegmentIndex])
        let total = bill + tip
        
        // Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        splitTipLabel.text = String(format: "$%.2f", tipPerPerson)
        
        
    }
    
    
    
}

