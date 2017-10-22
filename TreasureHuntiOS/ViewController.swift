//
//  ViewController.swift
//  TreasureHuntiOS
//
//  Created by Sophia Nesamoney on 9/25/17.
//  Copyright © 2017 Sophia Nesamoney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var game = TreasureHunt()

    @IBOutlet weak var theText: UILabel!
   
    @IBOutlet weak var input: UITextField!
    
    var currentLocation: Int = 0
    let imageView = UIImageView(image: UIImage(named: "pete.png")!)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        input.delegate = self
        input.isHidden = true
        theText.text = game.welcomeUser()
        
        imageView.frame = CGRect(x: 0, y: 0, width: 280, height: 320)
        view.addSubview(imageView)
        imageView.center = self.view.center;
        
        
//        theText.text = game.getUserInput1text()
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func enter(_ sender: UIButton) {
        input.isHidden = false
        // *** move game logic back into game class in next version ***
        if let textEntry = input.text {
            if (currentLocation == 0) {
                theText.text = game.getUserInput1text()
                imageView.image = UIImage(named:"image 2")
                currentLocation = 1
            } else if (currentLocation == 1) {
                if (textEntry == "mountains") {
                    theText.text = game.getUserInput2text(input: "mountains")
                    imageView.image = UIImage(named:"mountains")
                    currentLocation = 2
                    input.text = ""
                } else if (textEntry == "ocean") {
                    theText.text = game.getUserInput2text(input: "ocean")
                    imageView.image = UIImage(named:"ocean")
                    currentLocation = 2
                    input.text = ""
                } else if (textEntry == "town") {
                    theText.text = game.getUserInput2text(input: "town")
                    imageView.image = UIImage(named:"town")
                    currentLocation = 2
                    input.text = ""
                } else {
                    theText.text = game.getUserInput1text()
                    input.text = ""
                }
            } else if (currentLocation == 2) {
                if (textEntry == "cave") {
                    theText.text = game.getUserInput3text(input: "cave")
                    imageView.image = UIImage(named:"cave")
                    currentLocation = 3
                    input.text = ""
                } else if (textEntry == "treehouse") {
                    theText.text = game.getUserInput3text(input: "treehouse")
                    imageView.image = UIImage(named:"treehouse")
                    currentLocation = 3
                    input.text = ""
                } else if (textEntry == "candy store") {
                    theText.text = game.getUserInput3text(input: "candy store")
                    imageView.image = UIImage(named:"candy store")
                    currentLocation = 3
                    input.text = ""
                } else if (textEntry == "bowling alley") {
                    theText.text = game.getUserInput3text(input: "bowling alley")
                    imageView.image = UIImage(named:"bowling alley")
                    currentLocation = 3
                    input.text = ""
                } else if (textEntry == "sunken ship") {
                    theText.text = game.getUserInput3text(input: "sunken ship")
                    imageView.image = UIImage(named:"sunken ship")
                    currentLocation = 3
                    input.text = ""
                } else if (textEntry == "island") {
                    theText.text = game.getUserInput3text(input: "island")
                    imageView.image = UIImage(named:"island")
                    currentLocation = 3
                    input.text = ""
                } else {
                    theText.text = game.getUserInput1text() //what do I put here?
                }
            } else if (currentLocation == 3) {
                if (textEntry == "right") {
                    theText.text = game.resultText(input: "right")
                    imageView.image = UIImage(named:"pete.png")
                    currentLocation = 4
                    input.text = ""
                }
                else if (textEntry == "left") {
                    theText.text = game.resultText(input: "left")
                    imageView.image = UIImage(named:"pete.png")
                    currentLocation = 4
                    input.text = ""
                }
            } else if (currentLocation == 4) {
                if (textEntry == "yes") {
                    currentLocation = 0
                    theText.text = game.getUserInput1text()
                    imageView.image = UIImage(named:"image 2")
                    input.text = ""
                }
                else if (textEntry == "no") {
                    theText.text = "Goodbye, thanks for playing!"
                    imageView.image = UIImage(named:"pete.png")
                    input.isHidden = true
                    sender.isHidden = true

                    input.text = ""
                }
                
            } else {
                
            }
            
        //label.text = game.checkMatch(guess: guess)
        }
}
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        input.resignFirstResponder()
        return true
    }
}

