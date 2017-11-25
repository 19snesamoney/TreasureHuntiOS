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
    
    @IBOutlet weak var error: UILabel!
    
    @IBOutlet weak var enter: UIButton!
    
    @IBAction func reset(_ sender: UIButton) {
        currentLocation = 0
        theText.text = game.welcomeUser()
        imageView.image = UIImage(named:"pirateFinal")
        input.isHidden = true
        input.text = ""
        enter.isHidden = false
    }
    
    var currentLocation: Int = 0
    let imageView = UIImageView(image: UIImage(named: "pirateFinal")!)
    var currentLocationName = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.keyboardWillShow(sender:)), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.keyboardWillHide(sender:)), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
        input.delegate = self
        input.isHidden = true
        theText.text = game.welcomeUser()
        error.text = "Not a valid answer. Please enter one of the choices above!"
        error.isHidden = true
        imageView.frame = CGRect(x: 0, y: 0, width: 280, height: 320)
        view.addSubview(imageView)
        imageView.center = self.view.center
        theText.center.x = self.view.center.x
        input.center.x = self.view.center.x
        error.center.x = self.view.center.x


        
//        theText.text = game.getUserInput1text()
        // Do any additional setup after loading the view, typically from a nib.

    }
    //the two functions below have code adapted from stackoverflow.comquestions/25693130/move-textfield-when-keyboard-appears-swift
    
    func keyboardWillShow(sender: NSNotification) {
        
        self.view.frame.origin.y = -180
        
    }
    
    func keyboardWillHide(sender: NSNotification) {
        
        self.view.frame.origin.y = 0
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func enter(_ sender: UIButton) {
        input.isHidden = false
        // *** move game logic back into game class in next version ***
        if var textEntry = input.text {
            if (currentLocation == 0) {
                theText.text = game.getUserInput1text()
                imageView.image = UIImage(named:"beachFinal")
                currentLocation = 1
            } else if (currentLocation == 1) {
                error.isHidden = true
                if (textEntry == "mountains") {
                    theText.text = game.getUserInput2text(input: "mountains")
                    imageView.image = UIImage(named:"mountainsFinal")
                    currentLocation = 2
                    currentLocationName = "mountains"
                    input.text = ""
                } else if (textEntry == "ocean") {
                    theText.text = game.getUserInput2text(input: "ocean")
                    imageView.image = UIImage(named:"oceanFinal")
                    currentLocation = 2
                    currentLocationName = "ocean"
                    input.text = ""
                } else if (textEntry == "town") {
                    theText.text = game.getUserInput2text(input: "town")
                    imageView.image = UIImage(named:"townFinal")
                    currentLocation = 2
                    currentLocationName = "town"
                    input.text = ""
                } else {
                    theText.text = game.getUserInput1text()
                    input.text = ""
                    error.isHidden = false
                }
            } else if (currentLocation == 2) {
                error.isHidden = true
                if (textEntry == "cave") {
                    theText.text = game.getUserInput3text(input: "cave")
                    imageView.image = UIImage(named:"caveFinal")
                    currentLocation = 3
                    currentLocationName = "cave"
                    input.text = ""
                } else if (textEntry == "treehouse") {
                    theText.text = game.getUserInput3text(input: "treehouse")
                    imageView.image = UIImage(named:"treehouseFinal")
                    currentLocation = 3
                    currentLocationName = "treehouse"
                    input.text = ""
                } else if (textEntry == "candy store") {
                    theText.text = game.getUserInput3text(input: "candy store")
                    imageView.image = UIImage(named:"candystoreFinal")
                    currentLocation = 3
                    currentLocationName = "candy store"
                    input.text = ""
                } else if (textEntry == "bowling alley") {
                    theText.text = game.getUserInput3text(input: "bowling alley")
                    imageView.image = UIImage(named:"bowlingAlley")
                    currentLocation = 3
                    currentLocationName = "bowling alley"
                    input.text = ""
                } else if (textEntry == "sunken ship") {
                    theText.text = game.getUserInput3text(input: "sunken ship")
                    imageView.image = UIImage(named:"sunkenshipFinal")
                    currentLocation = 3
                    currentLocationName = "sunken ship"
                    input.text = ""
                } else if (textEntry == "island") {
                    theText.text = game.getUserInput3text(input: "island")
                    imageView.image = UIImage(named:"islandFinal")
                    currentLocation = 3
                    currentLocationName = "island"
                    input.text = ""
                } else {
                    error.isHidden = false
                }
            } else if (currentLocation == 3) {
                error.isHidden = true
                let randomInt = Int(arc4random_uniform(2))
                if (randomInt == 0) {
                    textEntry = "right"
                }
                else {
                    textEntry = "left"
                }
                if (textEntry == "right") {
                    theText.text = game.resultText(input: "right")
                    imageView.image = UIImage(named:"pirateFinal")
                    currentLocation = 4
                    input.text = ""
                }
                else if (textEntry == "left") {
                    theText.text = game.resultText(input: "left")
                    imageView.image = UIImage(named:"pirateFinal")
                    currentLocation = 4
                    input.text = ""
                } else {
                    error.isHidden = false
                }
            } else if (currentLocation == 4) {
                error.isHidden = true
                if (textEntry == "yes") {
                    currentLocation = 0
                    theText.text = game.getUserInput1text()
                    imageView.image = UIImage(named:"beachFinal")
                    input.text = ""
                }
                else if (textEntry == "no") {
                    theText.text = "Goodbye, thanks for playing!"
                    imageView.image = UIImage(named:"pirateFinal")
                    input.isHidden = true
                    sender.isHidden = true

                    input.text = ""
                } else {
                    error.isHidden = false
                }
                
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

