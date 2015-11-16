//
//  ViewController.swift
//  SteppingSlider
//
//  Created by Jure Zove on 16/11/15.
//  Copyright © 2015 Candy Code. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var label: UILabel!
  let step: Float = 10
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func sliderValueChanged(sender: UISlider) {
    let roundedValue = round(sender.value / step) * step
    sender.value = roundedValue
    label.text = "\(Int(roundedValue))"
  }

}

