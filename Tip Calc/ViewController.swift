//
//  ViewController.swift
//  Tip Calc
//
//  Created by Trustin Harris on 6/19/18.
//  Copyright © 2018 Trustin Harris. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tiplabel: UILabel!
    @IBOutlet weak var PercentageControl: UISegmentedControl!
    @IBOutlet weak var Billfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func CalculateTip(_ sender: Any) {
        let tipPercentage = [0.05, 0.1, 0.15]
        
        let bill = Double(Billfield.text!)
        let tip = bill! * tipPercentage[PercentageControl.selectedSegmentIndex]
        let total = bill! + tip
        
        tiplabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

