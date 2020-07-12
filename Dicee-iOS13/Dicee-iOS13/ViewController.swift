//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //IBOutlet allows me to reference a UI element
    //Interface Builder = IB
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    var leftDiceNumber = 0
    var rightDiceNumber = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Who.What = Value
        //who needs changed, what needs changed = changed into what value?
        
        //diceImageViewOne.image = #imageLiteral(resourceName: "DiceSix")
        //                     image literal
        //diceImageViewOne.alpha = 0.5
        
        //Dice 2 challenge
        //diceImageViewTwo.image =  #imageLiteral(resourceName: "DiceTwo")
    }
    @IBAction func rollButtonPress(_ sender: UIButton) {
        
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo") , #imageLiteral(resourceName: "DiceThree") , #imageLiteral(resourceName: "DiceFour") , #imageLiteral(resourceName: "DiceFive") , #imageLiteral(resourceName: "DiceSix")]
        
        diceImageViewOne.image = diceArray.randomElement()
        //Random element is used for arrays
        
        diceImageViewTwo.image = diceArray[Int.random(in: 1...5)]
        //used a lot for a random generator however for arrays we use .randomElement()
        
        
        /*if (leftDiceNumber < 5) {
            leftDiceNumber = leftDiceNumber + 1
        }
        
        if (rightDiceNumber > 0) {
            rightDiceNumber = rightDiceNumber - 1
        }
        
        if (rightDiceNumber == 0) && (leftDiceNumber == 5){
                leftDiceNumber = 0
                rightDiceNumber = 5
        }*/
    }
    
    @IBAction func resetDiceButton(_ sender: UIButton) {
        diceImageViewOne.image = #imageLiteral(resourceName: "DiceOne")
        diceImageViewTwo.image = #imageLiteral(resourceName: "DiceOne")
    }
    //UI is on left, Code is on right
//IBOutlet lets the code change the UI. UI<-Code
//IBAction lets the UI change the code. UI->Code (button)
}

