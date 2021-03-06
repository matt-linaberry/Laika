//
//  ViewController.swift
//  Laika
//
//  Created by Matthew Linaberry on 1/14/15.
//  Copyright (c) 2015 Matthew Linaberry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var humanYearsTextfield: UITextField!
    @IBOutlet var dogYearsLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        dogYearsLabel.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func calculateButtonTouched(sender: UIButton) {
        let humanYearsEntered = humanYearsTextfield.text.toInt()!
        var dogYearsResult:Double
        if (humanYearsEntered <= 2)
        {
            dogYearsResult = Double(humanYearsEntered) * 10.5
        }
        else
        {
            dogYearsResult = (Double(2) * 10.5) + ((Double(humanYearsEntered) - 2) * 4)
        }
        dogYearsLabel.text = "\(humanYearsEntered) " + "in dog years is " + "\(dogYearsResult)"
        dogYearsLabel.hidden = false
        humanYearsTextfield.resignFirstResponder()
    }


}

