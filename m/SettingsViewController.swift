//
//  SettingsViewController.swift
//  m
//
//  Created by YoungWarlock on 12/28/15.
//  Copyright © 2015 Morgan State. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    @IBOutlet weak var fruityTextField: UITextField!
    
    @IBOutlet weak var tax: UITextField!
    
    @IBOutlet weak var split: UITextField!
    
    @IBOutlet weak var fruitylabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let stringKey = NSUserDefaults.standardUserDefaults()
        tax.text = stringKey.stringForKey("savedStringKey")
        split.text = stringKey.stringForKey("savedStringKey1")
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
       
    @IBAction func saveText(sender: AnyObject) {
        
        let myText = tax.text;
        let myText1=split.text
        NSUserDefaults.standardUserDefaults().setObject(myText, forKey: "savedStringKey")
        NSUserDefaults.standardUserDefaults().setObject(myText1, forKey: "savedStringKey1")
        NSUserDefaults.standardUserDefaults().synchronize()
        
        var alert = UIAlertController(title: "Saved", message: "Your settings have been saved", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: .Cancel, handler: nil))
        
        self.presentViewController(alert, animated: true, completion: nil)
        
        
        
        
        
        
    }
    
    
    
    
}
