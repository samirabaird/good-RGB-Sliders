//
//  ViewController.swift
//  RGB Sliders
//
//  Created by Samira Baird on 11/16/15.
//  Copyright © 2015 Samira Baird. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateBackgroundColor()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func updateBackgroundColor() {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)

        view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
}
