//
//  ViewController.swift
//  SliderView
//
//  Created by Торопов Даниил  on 29.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var valueRedLabel: UILabel!
    @IBOutlet weak var valueGreenLabel: UILabel!
    @IBOutlet weak var valueBlueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    // MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSliders()
        setupValueOfLabels()
        setupNamesOfColors()
        colorView.layer.cornerRadius = 10
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
    // MARK: - IB Actions
    @IBAction func redSliderAction() {
        valueRedLabel.text = String(format: "%.2f", redSlider.value)
        
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
    @IBAction func greenSliderAction() {
        valueGreenLabel.text = String(format: "%.2f", greenSlider.value)
        
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
    @IBAction func blueSliderAction() {
        valueBlueLabel.text = String(format: "%.2f", blueSlider.value)
        
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
    // MARK: - Private Methods
    private func setupValueOfLabels() {
        valueRedLabel.text = redSlider.value.formatted()
        valueRedLabel.font = valueRedLabel.font.withSize(20)
        valueRedLabel.textColor = .white
        
        valueGreenLabel.text = greenSlider.value.formatted()
        valueGreenLabel.font = valueGreenLabel.font.withSize(20)
        valueGreenLabel.textColor = .white
        
        valueBlueLabel.text = blueSlider.value.formatted()
        valueBlueLabel.font = valueBlueLabel.font.withSize(20)
        valueBlueLabel.textColor = .white
    }
    
    private func setupNamesOfColors() {
        redLabel.text = "Red:"
        redLabel.font = redLabel.font.withSize(20)
        redLabel.textColor = .white
        
        greenLabel.text = "Green:"
        greenLabel.font = greenLabel.font.withSize(20)
        greenLabel.textColor = .white
        
        blueLabel.text = "Blue:"
        blueLabel.font = blueLabel.font.withSize(20)
        blueLabel.textColor = .white
    }
    
    private func setupSliders() {
        redSlider.value = 0
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .red
        
        greenSlider.value = 0
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .green
        
        blueSlider.value = 0
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .blue
    }
}
