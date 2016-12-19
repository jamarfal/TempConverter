//
//  FahrenheitConversor.swift
//  TempConverter
//
//  Created by José Alberto Martín Falcón on 19/12/16.
//  Copyright © 2016 José Alberto Martín Falcón. All rights reserved.
//

import Foundation
class FahrenheitConversor : Converter {
    
    func convert(temperatureFrom:Float) -> Float
    {
        let fahrenheit:Float = ((temperatureFrom * 9) / 5) + 32
        return fahrenheit;
    }
}
