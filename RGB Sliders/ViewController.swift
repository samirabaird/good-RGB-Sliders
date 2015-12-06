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
        
        let defaults = NSUserDefaults.standardUserDefaults()
        redSlider.value = defaults.floatForKey("red")
        greenSlider.value = defaults.floatForKey("green")
        blueSlider.value = defaults.floatForKey("blue")
        
        
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
        
        
        colorSquare.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        
        let defaults = NSUserDefaults.standardUserDefaults()  //1
        defaults.setFloat(redSlider.value, forKey: "red")   //2
        defaults.setFloat(greenSlider.value, forKey: "green")
        defaults.setFloat(blueSlider.value, forKey: "blue")
        defaults.synchronize()    //3
        
    
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "openColor") {
            let newViewController = segue.destinationViewController
            newViewController.view.backgroundColor = colorSquare.backgroundColor
        }
    }
    

    
}




