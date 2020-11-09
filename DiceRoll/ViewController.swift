//
//  ViewController.swift
//  DiceRoll
//
//  Created by  on 11/1/20.
//  Copyright © 2020 AubreyApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var die1: UILabel!
    @IBOutlet weak var die2: UILabel!
    @IBOutlet weak var sum: UILabel!
    @IBOutlet weak var winLabel: UILabel!
    @IBOutlet weak var lossLabel: UILabel!
    
    var winCount = 0
    var lossCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func rollDice(_ sender: UIButton)
    {
        let randomInt1 = Int.random(in: 1..<7)
        let randomInt2 = Int.random(in: 1..<7)
        let diceSum = randomInt1 + randomInt2
        die1.text = String(randomInt1)
        die2.text = String(randomInt2)
        sum.text = String(diceSum)
        
        if diceSum == 7 || diceSum == 11 {
            winCount = winCount + 1
            
        let alert = UIAlertController(title: "Win Alert", message: "You won!", preferredStyle: .alert)
            let action = UIAlertAction(title: "Dismiss", style: .default, handler: nil)
            alert.addAction(action)
        present(alert, animated: true, completion: nil)
        }
        
        if diceSum == 2 || diceSum == 3 || diceSum == 12 {
            lossCount = lossCount + 1
            
            let alert = UIAlertController(title: "Lost Alert", message: "You lose", preferredStyle: .alert)
            let action = UIAlertAction(title: "Dismiss", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
        }
        
        winLabel.text = String(winCount)
        lossLabel.text = String(lossCount)
        
    }
    
}

