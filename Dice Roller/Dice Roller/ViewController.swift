//
//  ViewController.swift
//  Dice Roller
//
//  Created by Jassim Almljawi on 5/7/20.
//  Copyright © 2020 Syed Ali Raza Bokhari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    let diceImages = [#imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2"), #imageLiteral(resourceName: "dice3"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice6")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rollDice()
    }

    @IBAction func onPressedRollButton(_ sender: UIButton) {
        rollDice()
    }
    
    func rollDice() {
        diceImageView1.image = diceImages.randomElement()
        diceImageView2.image = diceImages.randomElement()
    }
    
}

