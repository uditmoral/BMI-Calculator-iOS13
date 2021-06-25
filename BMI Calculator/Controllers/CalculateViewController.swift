//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var bmiValue = "0.0"

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func heightValueChanged(_ sender: UISlider) {
        let height = String(format: "%.2f",sender.value)
        heightLabel.text = "\(height)m"
        
    }
    
    @IBAction func weightValueChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f",sender.value)
        weightLabel.text = "\(weight)kg"
    }
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        let height = heightSlider.value;
        let weight = weightSlider.value;
        let bmi = Float(weight)/(Float(height) * Float(height))
      
        
        print("BMI value is \(bmi)")
        bmiValue = String(format: "%.1f", bmi)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmiValue
        }
    }
}

