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
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func converterAction(_ sender: UIButton) {
    }
}

