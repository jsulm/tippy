//
//  ViewController.swift
//  Tippy
//
//  Created by JS on 3/15/2017.
//  Copyright © 2017 Jeff Sulm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var billField: UITextField!
  @IBOutlet weak var tipLabel: UILabel!
  @IBOutlet weak var totalLabel: UILabel!
  @IBOutlet weak var tipControl: UISegmentedControl!

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func onTap(_ sender: Any) {
    view.endEditing(true)
  }

  @IBAction func calcTip(_ sender: Any) {
    let bill = Double(billField.text!) ?? 0
    let tipPercentArray = [ 0.15, 0.20, 0.25]
    let tip = bill * 	tipPercentArray[tipControl.selectedSegmentIndex]
    let total = bill + tip
    tipLabel.text = String.init(format: "$%.2f",
                                tip)
    totalLabel.text = String.init(format: "%.2f", total)
  }
  
  
}

