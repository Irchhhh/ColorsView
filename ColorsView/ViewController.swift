//
//  ViewController.swift
//  ColorsView
//
//  Created by Ирина on 23.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redSliderOutlet: UISlider!
    @IBOutlet var greenSliderOutlet: UISlider!
    @IBOutlet var blueSliderOutlet: UISlider!
    
    @IBOutlet var redLableOutlet: UILabel!
    @IBOutlet var greenLableOutlet: UILabel!
    @IBOutlet var blueLableOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSliderOutlet.value = 0
        redSliderOutlet.minimumValue = 0
        redSliderOutlet.maximumValue = 1
        
        redSliderOutlet.tintColor = .red
        redSliderOutlet.thumbTintColor = .red
        
        greenSliderOutlet.value = 0
        greenSliderOutlet.minimumValue = 0
        greenSliderOutlet.maximumValue = 1
        
        greenSliderOutlet.tintColor = .green
        greenSliderOutlet.thumbTintColor = .green
        
        blueSliderOutlet.value = 0
        blueSliderOutlet.minimumValue = 0
        blueSliderOutlet.maximumValue = 1
        
        blueSliderOutlet.tintColor = .blue
        blueSliderOutlet.thumbTintColor = .blue
        
        colorView.backgroundColor = .red
        colorView.backgroundColor = colorView.backgroundColor?.withAlphaComponent(CGFloat(redSliderOutlet.value))
        
    }
    func colorChange() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSliderOutlet.value), green: CGFloat(greenSliderOutlet.value), blue: CGFloat(blueSliderOutlet.value), alpha: 1)
    }

    @IBAction func redColorAction() {
        redLableOutlet.text = String(redSliderOutlet.value)
        colorChange()
    }
    
    @IBAction func greenColorAction() {
        greenLableOutlet.text = String(greenSliderOutlet.value)
        colorChange()
    }
    @IBAction func blueColorAction() {
        blueLableOutlet.text = String(blueSliderOutlet.value)
        colorChange()
    }
}

