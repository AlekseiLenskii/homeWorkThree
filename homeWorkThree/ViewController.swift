//
//  ViewController.swift
//  homeWorkThree
//
//  Created by Алексей on 09.02.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redLable: UILabel!
    @IBOutlet weak var greenLable: UILabel!
    @IBOutlet weak var blueLable: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
       
        colorView.layer.cornerRadius = 15
        
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
            )
        
        redLable.text = String(format: "%.2f", redSlider.value)
        greenLable.text = String(format: "%.2f", greenSlider.value)
        blueLable.text = String(format: "%.2f", blueSlider.value)
    }

    @IBAction func sliderAction(_ sender: UISlider) {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
            )
        
        redLable.text = String(format: "%.2f", redSlider.value)
        greenLable.text = String(format: "%.2f", greenSlider.value)
        blueLable.text = String(format: "%.2f", blueSlider.value)
    }
}

