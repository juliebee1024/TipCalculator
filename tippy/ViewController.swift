//
//  ViewController.swift
//  tippy
//
//  Created by julbao on 8/13/18.
//  Copyright © 2018 Julie Bao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBAction func onTap(_ sender: AnyObject) //When screen is tapped
    {
        view.endEditing(true) //keyboard goes down
    }
    @IBAction func calculateTip(_ sender: AnyObject) //When Bill is typed in
    {
        let tipPercentages = [0.18, 0.2, 0.25]
        
        let bill = Double(billField.text!) ?? 0 //(Swift wants !) If null in box, default value is 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip) //%f - doubles, %@ - string, $d - ints
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
}

