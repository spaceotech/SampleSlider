//
//  ViewController.swift
//  SampleSlider
//
//  Created by Hitesh on 1/17/17.
//  Copyright © 2017 spaceo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var lblValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //Minimum Slider Value
        slider.minimumValue = 0
        
        //Maximum Slider Value
        slider.maximumValue = 100
        
        //Current Slider Value
        slider.value = 10
        lblValue.text = String(Int(slider.value))
        
        //If continuous = true then value change instantly else value will update once drag action completed
        slider.continuous = false
    }

    @IBAction func sliderValueChange(sender: AnyObject) {
        lblValue.text = String(Int(slider.value))
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

