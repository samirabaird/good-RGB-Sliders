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
    @IBOutlet weak var colorSquare: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        colorSquare.layer.borderColor = UIColor.blackColor().CGColor
        colorSquare.layer.borderWidth = 1
        

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func updateBackgroundColor() {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)

       // view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        
        
        colorSquare.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        
    
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "openColor") {
            let newViewController = segue.destinationViewController
            newViewController.view.backgroundColor = colorSquare.backgroundColor
        }
    }
    

    
}




