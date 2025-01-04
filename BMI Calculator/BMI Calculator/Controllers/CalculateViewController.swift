//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightValLabel: UILabel!
    @IBOutlet weak var weightValLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        //let inches = Int((sender.value - Float(feet)) * 12)
        heightValLabel.text = "\(Int(sender.value))ft \(calculatorBrain.calcRemainingIn(heightValue: sender.value))in"
    }

    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightValLabel.text = String(Int(sender.value))
    }
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        calculatorBrain.calcBMIValue(heightValue: heightSlider.value, weightValue: weightSlider.value)
        self.performSegue(withIdentifier: "goToResult", sender: self)
//        let secondVC = SecondViewController()
//        secondVC.bmiValue = String(format: "%.1f", bmi)
//        self.present(secondVC, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.backgroundColor = calculatorBrain.getColor()
        }
    }
    
    
    
}

