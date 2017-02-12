//
//  ViewController.swift
//  Color Palette
//
//  Created by Bill Zhao on 1/1/17.
//  Copyright © 2017 Madooga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var colorNumber = 0
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redControl: UISlider!
    @IBOutlet weak var greenControl: UISlider!
    @IBOutlet weak var blueControl: UISlider!
    @IBOutlet var colorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeColor() {
        let r: CGFloat = CGFloat(self.redControl.value)
        let g: CGFloat = CGFloat(self.greenControl.value)
        let b: CGFloat = CGFloat(self.blueControl.value)
        
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
        
        self.colorLabel.text = "\(String(format:"%02X", Int(255*self.redControl.value)))\(String(format:"%02X", Int(255*self.greenControl.value)))\(String(format:"%02X", Int(255*self.blueControl.value)))"
    }
}
