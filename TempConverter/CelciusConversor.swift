//
//  CelciusConversor.swift
//  TempConverter
//
//  Created by José Alberto Martín Falcón on 19/12/16.
//  Copyright © 2016 José Alberto Martín Falcón. All rights reserved.
//

import Foundation

class CelciusConversor : Converter {
    
    func convert(temperatureFrom:Float) -> Float
    {
        let celsius:Float = ((temperatureFrom - 32) * 5) / 9
        return celsius;
    }
}
