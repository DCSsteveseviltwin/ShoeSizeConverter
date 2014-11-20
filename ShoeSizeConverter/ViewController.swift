//
//  ViewController.swift
//  ShoeSizeConverter
//
//  Created by David and Gloria Sciuto on 10/10/14.
//  Copyright (c) 2014 David C Sciuto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoesSizeTextField: UITextField!

    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        let sizeFromTextField = mensShoesSizeTextField.text
        let numberFromTextField = sizeFromTextField.toInt()
        var integerFromTextField = numberFromTextField!
        let conversionConstant = 30
        integerFromTextField += conversionConstant
        mensConvertedShoeSizeLabel.hidden = false
        let stringWithUpdatedShoeSize = "\(integerFromTextField)"
        mensConvertedShoeSizeLabel.text = stringWithUpdatedShoeSize
    }
}