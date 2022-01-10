//
//  ViewController.swift
//  prework
//
//  Created by Miguel Castillo on 1/9/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Perform math to obtain total tip (total = tip * tipPercenetage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Updating tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        // Updating total amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

