//
//  ResultViewController.swift
//  Roshambo
//
//  Created by Bill Zhao on 1/2/17.
//  Copyright © 2017 Madooga. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet var opponentResultImage: UIImageView!
    @IBOutlet var resultLabel: UILabel!
    var opponentResultValue: Int?
    var myChoice: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIView.animate(withDuration: 0.3) {
            self.opponentResultImage.alpha = 1
        }

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if self.opponentResultValue == nil {
            return
        }
        // print("mychoice = \(self.myChoice)")
        // print("opponent = \(self.opponentResultValue)")
        
        let winStr = "You win!"
        let loseStr = "Computer wins!"
        let tieStr = "It's a tie!"
        
        switch self.opponentResultValue! {
        case 1 where self.myChoice == 1:
            self.opponentResultImage.image = UIImage(named: "itsATie")
            resultLabel.text = tieStr
        case 1 where self.myChoice == 2:
            self.opponentResultImage.image = UIImage(named: "PaperCoversRock")
            resultLabel.text = winStr
        case 1 where self.myChoice == 3:
            self.opponentResultImage.image = UIImage(named: "RockCrushesScissors")
            resultLabel.text = loseStr
        case 2 where self.myChoice == 1:
            self.opponentResultImage.image = UIImage(named: "PaperCoversRock")
            resultLabel.text = loseStr
        case 2 where self.myChoice == 2:
            self.opponentResultImage.image = UIImage(named: "itsATie")
            resultLabel.text = tieStr
        case 2 where self.myChoice == 3:
            self.opponentResultImage.image = UIImage(named: "ScissorsCutPaper")
            resultLabel.text = winStr
        case 3 where self.myChoice == 1:
            self.opponentResultImage.image = UIImage(named: "RockCrushesScissors")
            resultLabel.text = winStr
        case 3 where self.myChoice == 2:
            self.opponentResultImage.image = UIImage(named: "ScissorsCutPaper")
            resultLabel.text = loseStr
        case 3 where self.myChoice == 3:
            self.opponentResultImage.image = UIImage(named: "itsATie")
            resultLabel.text = tieStr
        default:
            self.opponentResultImage.image = nil
        }
        
        
    }
    
    @IBAction func dismiss() {
        self.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    

}
