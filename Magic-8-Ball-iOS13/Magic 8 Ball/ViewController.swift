//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet var ballView: UIImageView!
    let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball4"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]

    override func viewDidLoad() {
        //on load, have random image start
        ballView.image = ballArray.randomElement()
    }
    
    @IBAction func askButton(_ sender: UIButton) {
    
        //when button is pushed, randomize the 8 ball
        ballView.image = ballArray.randomElement()
    }
}

