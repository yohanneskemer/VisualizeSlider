//
//  ViewController.swift
//  VisualizeSlider
//
//  Created by Yohanes Haile on 2/14/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var sliderSwitch: UISwitch!
    @IBOutlet weak var numberSlider: UISlider!
    @IBOutlet weak var visualizeBtn: UIButton!
    @IBOutlet weak var sliderValueShower: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
        
    }
   
    @IBAction func switchSlider(_ sender: UISwitch) {
        if(sliderSwitch.isOn){
            numberSlider.isEnabled = true
            visualizeBtn.isEnabled = true
            print("this works fine")
        }
        else{
            numberSlider.isEnabled = false
            visualizeBtn.isEnabled = false
        }
    }
    
    
    @IBAction func changeSliderValue(_ sender: UISlider){
        numberSlider.value = Float((sender.value))
        // print(sliderValueShower.text ?? "Slider Value")
    }
    
    
    @IBAction func visualizeSliderValue(_ sender: UIButton) {
        sliderValueShower.text = "Slider Value = \(Int(numberSlider.value))"
    }
    
    
}

