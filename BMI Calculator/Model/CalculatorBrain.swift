//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by UDIT MORAL on 25/06/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmiValue: BMI?
    
    mutating func calculateBMI(height: Float,weight: Float) {
        
        let bmiValueTemp = weight/(height*height)
        if bmiValueTemp < 18.5 {
            bmiValue = BMI(value: bmiValueTemp, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValueTemp < 25 {
            bmiValue = BMI(value: bmiValueTemp, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmiValue = BMI(value: bmiValueTemp, advice: "Eat less pies!", color: #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1))
        }
    
    }
    
    func getBMI() -> String {
        let bmiTo1Decimal = String(format: "%.1f", bmiValue?.value ?? 0.0)
        return bmiTo1Decimal
    }
    
    func getAdvice() -> String {
        return bmiValue?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmiValue?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
