//
//  ViewController.swift
//  TempConverter
//
//  Created by José Alberto Martín Falcón on 19/12/16.
//  Copyright © 2016 José Alberto Martín Falcón. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tempTextField: UITextField!
    @IBOutlet weak var tempSwitch: UISwitch!
    @IBOutlet weak var resultTempLabel: UILabel!
    
    var converter:Converter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.converter = FahrenheitConversor();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func converterAction(_ sender: UIButton) {
        let temperature:Float = toFloat(floatNumberStr: tempTextField.text!)
        
        resultTempLabel.text =  toString(floatNumber: self.converter.convert(temperatureFrom: temperature)) + "ºC";
        
        self.tempTextField.text = "";
        
    }
    
    @IBAction func onSwitchChanged(_ sender: UISwitch) {
        if sender.isOn {
            self.converter = FahrenheitConversor();
        }else{
            self.converter = CelciusConversor();
        }
    }
    
    
    func toFloat(floatNumberStr:String) -> Float
    {
        return NSString(string: floatNumberStr).floatValue
    }
    
    func toString(floatNumber:Float) -> String
    {
        return NSString(format: "%.1f", floatNumber) as String
    }
}

