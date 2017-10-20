//
//  ViewController.swift
//  RollTheDice
//
//  Created by ICK on 19/10/2017.
//  Copyright © 2017 Anesa Dinarama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Label: UILabel!
    
    @IBOutlet weak var LeftDiceImageView: UIImageView!
    
    @IBOutlet weak var RightDiceImageView: UIImageView!
    
    @IBOutlet weak var SwitchDiceButton: UISwitch!
    
    @IBOutlet weak var DiceRollButton: UIButton!
    
    @IBAction func DiceRollButtonAction(_ sender: UIButton) {
        
        if SwitchDiceButton.isOn {
            rollseconddice()
            rollfirstdice()
            
        }else {
            rollfirstdice()
            
        }
        
        
        
    }
    
    
    @IBAction func DiceSwitchAction(_ sender: UISwitch) {
        if SwitchDiceButton.isOn {
            
            RightDiceImageView.image = UIImage(named: "zari1")
            
        }else {
            RightDiceImageView.image = nil
            
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        RightDiceImageView.image = nil
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    
    func rollfirstdice() {
        
        let randomNumber = Int(arc4random_uniform(5)) + 1
        
        switch randomNumber {
        case 1:
            LeftDiceImageView.image = UIImage(named: "zari1")
        case 2:
            LeftDiceImageView.image = UIImage(named: "zari2")
        case 3:
            LeftDiceImageView.image = UIImage(named: "zari3")
        case 4:
            LeftDiceImageView.image = UIImage(named: "zari4")
        case 5:
            LeftDiceImageView.image = UIImage(named: "zari5")
        case 6:
            LeftDiceImageView.image = UIImage(named: "zari6")
        default:
            LeftDiceImageView.image = nil
        }
    }
    func rollseconddice() {
        
        let randomNumber = Int(arc4random_uniform(5)) + 1
        
        switch randomNumber {
        case 1:
            RightDiceImageView.image = UIImage(named: "zari1")
        case 2:
            RightDiceImageView.image = UIImage(named: "zari2")
        case 3:
            RightDiceImageView.image = UIImage(named: "zari3")
        case 4:
            RightDiceImageView.image = UIImage(named: "zari4")
        case 5:
            RightDiceImageView.image = UIImage(named: "zari5")
        case 6:
            RightDiceImageView.image = UIImage(named: "zari6")
        default:
            RightDiceImageView.image = nil
            
         
            
        }
    }
    
    
    
    
        
    
}

