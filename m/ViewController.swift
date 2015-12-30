//
//  ViewController.swift
//  m
//
//  Created by YoungWarlock on 12/14/15.
//  Copyright © 2015 Morgan State. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    
    
    @IBOutlet weak var setting: UIBarButtonItem!
    
    
    @IBOutlet weak var navigationbar: UINavigationBar!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipLabel.text="$0.00"
        totalLabel.text="$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender:
        AnyObject) {
            
        let tipPercentages = [0.18, 0.2, 0.22]
         let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        let billAmount = NSString(string: billField.text!).doubleValue
        let tip = billAmount * tipPercentage
        let total = billAmount + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true   )
    }
}