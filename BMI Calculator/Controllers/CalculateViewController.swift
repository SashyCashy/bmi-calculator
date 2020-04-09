//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightSliderValue: UISlider!
    
    @IBOutlet weak var weightSliderValue: UISlider!
    
    
    @IBOutlet weak var weightValue: UILabel!
    
    @IBOutlet weak var heightValue: UILabel!
    
    
    var calculatorBrain = CalculatorBrain(weight:100, height:1.5)
    
    var bmi = Float(0)
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        let weight = Int(sender.value)
        weightValue.text = calculatorBrain.calcWeight(wtVal:weight)
    }
    
    @IBAction func heightSliderChange(_ sender: UISlider) {
        heightValue.text = calculatorBrain.calcHeight(htVal:sender.value)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //calculatorBrain()
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        calculatorBrain.calculateBMI()
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC =  segue.destination as! ResultsViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}

