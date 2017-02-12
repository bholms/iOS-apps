//
//  ViewController.swift
//  Roshambo
//
//  Created by Bill Zhao on 1/2/17.
//  Copyright © 2017 Madooga. All rights reserved.
//

import UIKit

class ChoiceViewController: UIViewController {
    
    @IBOutlet var rockBtn: UIButton!
    @IBOutlet var paperBtn: UIButton!
    @IBOutlet var scissorBtn: UIButton!
    var myValue: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func randomOpponentChoice() -> Int {
        let randomValue = 1 + arc4random() % 3
        return Int(randomValue)
    }
    
    @IBAction func selectRock(sender: UIButton) {
        self.myValue = 1
        makeChoice()
    }
    
    @IBAction func selectPaper(sender: UIButton) {
        self.myValue = 2
        makeChoice()
    }
    
    @IBAction func selectScissor(sender: UIButton) {
        self.myValue = 3
        makeChoice()
    }
    
    func makeChoice() {
        let controller: ResultViewController
        controller = storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        
        controller.myChoice = self.myValue
        controller.opponentResultValue = randomOpponentChoice()
        
        // Present the view Controller
        present(controller, animated: true, completion: nil)
    }
}
