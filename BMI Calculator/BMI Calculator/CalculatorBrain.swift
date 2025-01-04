//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Aryan Goel on 6/18/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi : BMI?
    
    mutating func calcBMIValue(heightValue: Float, weightValue: Float) {
        
        let heightInInch = heightValue * 12
        let bmiValue = (weightValue / (heightInInch * heightInInch)) * 703
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more snacks!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 25 {
            bmi = BMI(value: bmiValue, advice: "You are fit!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else if bmiValue < 30 {
            bmi = BMI(value: bmiValue, advice: "Eat less snacks!", color: #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1))
        } else if bmiValue < 40 {
            bmi = BMI(value: bmiValue, advice: "Go out more!", color: #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Exercise more!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? "0.0")
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.9999018312, green: 1, blue: 0.9998798966, alpha: 1)
    }
    
    func calcRemainingIn(heightValue: Float) -> Int {
        return Int((heightValue - Float(Int(heightValue))) * 12)
    }
}
