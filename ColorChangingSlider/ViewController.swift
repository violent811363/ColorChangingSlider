//
//  ViewController.swift
//  ColorChangingSlider
//
//  Created by 吳世馨 on 2020/12/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var livingRoomImageView: UIImageView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
        UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1).cgColor,
        UIColor(red: 238/255, green: 192/255, blue: 198/255, alpha: 1).cgColor,
        UIColor(red: 211/255, green: 184/255, blue: 203/255, alpha: 1).cgColor,
        UIColor(red: 137/255, green: 154/255, blue: 299/255, alpha: 1).cgColor,
        ]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }

    @IBAction func colorChangingSlider(_ sender: Any) {
        livingRoomImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
    }
    
    
    @IBAction func randomColorButton(_ sender: Any) {
        let randomRed = Double.random(in: 0...1)
        let randomGreen = Double.random(in: 0...1)
        let randomBlue = Double.random(in: 0...1)
        let randomAlpha = Double.random(in: 0...1)
        
        livingRoomImageView.backgroundColor =  UIColor(red: CGFloat(randomRed), green: CGFloat(randomGreen), blue: CGFloat(randomBlue), alpha: CGFloat(randomAlpha))
    }
    
}

