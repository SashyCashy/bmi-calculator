//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Sashank Pindiproli on 3/25/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var height:Float?
    var weight:Int?
    var bmi: BMI?
    init(weight:Int, height:Float) {
        self.height = height
        self.weight = weight
    }
    mutating func calculateBMI() {
        let weightVal = weight ?? 0
        let heightVal = height ?? 0
        let bmiValue = Float(weightVal) / pow(heightVal , 2)
        switch bmiValue {
        case 0 ... 18.5:
            bmi =  BMI(value:bmiValue,advice:"Eat more pies", color:#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        case 18.5..<24.9:
            bmi =  BMI(value:bmiValue,advice:"Fit as a fiddle!", color:#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        default:
            bmi =  BMI(value:bmiValue,advice:"Eat less pies", color:#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
    }
    
    mutating func calcHeight (htVal:Float) -> String {
        self.height = htVal
        return String(format: "%.2f", htVal)+"m"
    }
    
    mutating func calcWeight (wtVal:Int) -> String {
        self.weight = wtVal
        return String(wtVal)+"Kg"
    }
    func getBMIValue() -> String {
        return String(format: "%.1f",bmi?.value ?? 0)
    }
    func getAdvice() -> String? {
        return bmi?.advice
    }
    
    func getColor() -> UIColor? {
        return bmi?.color
    }
}
