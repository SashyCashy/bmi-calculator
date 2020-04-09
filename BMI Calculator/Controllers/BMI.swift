//
//  BMI.swift
//  BMI Calculator
//
//  Created by Sashank Pindiproli on 3/26/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit


struct BMI {
    let value:Float
    let advice:String
    let color:UIColor
    
    init(value:Float, advice:String, color:UIColor) {
        self.value = value
        self.advice = advice
        self.color = color
    }
}
