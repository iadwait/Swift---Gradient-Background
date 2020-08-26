//
//  ViewController.swift
//  Gradient Background
//
//  Created by Adwait Barkale on 26/08/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        myButton.setTitle("Click Me", for: .normal)
        myButton.titleLabel?.font = .systemFont(ofSize: 30)
        myButton.layer.cornerRadius = myButton.frame.size.height / 2
        myButton.layer.masksToBounds = true
        //view.setGradientBackground(colorOne: .systemPink, colorTwo: .cyan)
        myView.setGradientBackground(colorOne: .white, colorTwo: .blue)
        myButton.setGradientBackground(colorOne: .orange, colorTwo: .yellow)
        view.setGradientBackgroundTwo(colorOne: .systemPink, colorTwo: .orange, colorThree: .red, colorFour: .yellow)
    }
}
extension UIView{
    
    func setGradientBackground(colorOne: UIColor,colorTwo: UIColor)
    {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor,colorTwo.cgColor]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.0)
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    func setGradientBackgroundTwo(colorOne: UIColor,colorTwo: UIColor,colorThree: UIColor,colorFour: UIColor)
    {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor,colorTwo.cgColor,colorThree.cgColor,colorFour.cgColor]
        //gradientLayer.locations = [0.0,0.4,0.2,1.0]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.0)
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}



