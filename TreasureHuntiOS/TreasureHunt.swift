//
//  File.swift
//  TreasureHuntiOS
//
//  Created by Sophia Nesamoney on 9/25/17.
//  Copyright © 2017 Sophia Nesamoney. All rights reserved.
//

import Foundation

//welcome user

class TreasureHunt {
    func welcomeUser() -> String {
//    print("Welcome to your treasure hunt! Let's get started")
//    print("The objective of the game is to find where the treasure is located! You will be given a set of choices and each choice determines whether you will move further from or closer to the treasure. Good luck!")
        
        let intro: String = "Welcome to your treasure hunt! Let's get started\n" + " The objective of the game is to find where the treasure is located! You will be given a set of choices and each choice determines whether you will move further from or closer to the treasure. Please click the 'enter' button to begin"
        return intro
}

func getInput (prompt: String, options: Set<String>) -> String {
    print(prompt)
    var input: String = readLine()!
    if(!options.contains(input)) {
        print("That is not a valid choice. Enter choice again")
        print(prompt)
        input = readLine()!
    }
    return input
}

func getUserInput1 () -> String {
    let theOptions: Set = ["mountains", "town", "ocean"]
    return getInput(prompt: "You are on a beach surrounded by mountains, a town, and the ocean. Will you search for the treasure in the 'town,' 'mountains,' or 'ocean'?", options: theOptions)
}
    
    func getUserInput1text () -> String {
        return "You are on a beach surrounded by mountains, a town, and the ocean. Will you search for the treasure in the 'town,' 'mountains,' or 'ocean'?"
    }


func getUserInput2 (input: String) -> String {
    var theOptions: Set<String> = [""]
    var prompt: String = ""
    if (input == "mountains") {
        theOptions = ["cave", "treehouse"]
        prompt = "Ok, you have chosen to venture into the mountains. You are hiking up the mountains, but soon grow tired. You approach a cave on your right side and a treehouse on your left. Do you enter the ‘cave’ or the ‘treehouse’?"
    }
    if (input == "town") {
        theOptions = ["candy store", "bowling alley"]
        prompt = "Ok, you have chosen to venture into the town. You approach a candy store and a bowling alley. Do you go to the ‘candy store’ or the ‘bowling alley’?"
        
    }
    if (input == "ocean") {
        theOptions = ["sunken ship", "island"]
        prompt = "You have chosen to venture into the ocean. You approach a sunken ship but see a small island in the distance out of the corner of your eye. Do you enter a 'sunken ship' or swim to the 'island'?"
    }
    return getInput(prompt: prompt, options: theOptions)
}
    
    func getUserInput2text (input: String) -> String {
        
        if (input == "mountains") {
          //  theOptions = ["cave", "treehouse"]
            return "Ok, you have chosen to venture into the mountains. You are hiking up the mountains, but soon grow tired. You approach a cave on your right side and a treehouse on your left. Do you enter the ‘cave’ or the ‘treehouse’?"
        } else if (input == "town") {
           // theOptions = ["candy store", "bowling alley"]
            return "Ok, you have chosen to venture into the town. You approach a candy store and a bowling alley. Do you go to the ‘candy store’ or the ‘bowling alley’?"
        } else if (input == "ocean") {
           // theOptions = ["sunken ship", "island"]
            return "You have chosen to venture into the ocean. You approach a sunken ship but see a small island in the distance out of the corner of your eye. Do you enter a 'sunken ship' or swim to the 'island'?"
        }
        
        return "..."
    }

func getUserInput3 (input2: String) -> String {
    let theOptions: Set = ["right", "left"]
    if (input2 == "cave") {
        return getInput(prompt: "Ok, you have chosen to enter the cave. A harmless cyclops approaches you and tells you that they can offer you two doors. One door contains the treasure chest and the other contains a hungry lion, but he doesn’t know which one. Do you enter the ‘right’ door or the ‘left’ door?", options: theOptions)
    }
    if (input2 == "treehouse") {
        return getInput(prompt: "Ok, you have chosen to enter the treehouse. A an owl swoops down towards you and tells you that he can offer you two doors. One door contains the treasure chest and the other contains a hungry lion, but he doesn’t know which one. Do you enter the ‘right’ door or the ‘left’ door?", options: theOptions)
    }
    if (input2 == "candy store") {
        return getInput(prompt: "Ok, you have chosen to enter the candy store. A young child approaches you and tells you that he can offer you two doors. One door contains the treasure chest and the other contains a hungry lion, but she doesn’t know which one. Do you enter the ‘right’ door or the ‘left’ door?", options: theOptions)
    }
    if (input2 == "bowling alley") {
        return getInput(prompt: "Ok, you have chosen to enter the bowling alley. A man approaches you and tells you that he can offer you two doors. One door contains the treasure chest and the other contains a hungry lion, but he doesn’t know which one. Do you enter the ‘right’ door or the ‘left’ door?", options: theOptions)
    }
    if (input2 == "sunken ship") {
        return getInput(prompt: "Ok, you have chosen to enter the sunken ship. A mermaid approaches you and tells you that she can offer you two doors. One door contains the treasure chest and the other contains a great white shark, but she doesn’t know which one.  Do you enter the ‘right’ door or the ‘left’ door?", options: theOptions)
    }
    if (input2 == "island") {
        return getInput(prompt:"Ok, you have chosen to swim to the island. On the island, a tropical parrot flies over to you and tells you that he can offer you two doors. One door contains the treasure chest and the other will unleash a tsunami.  Do you enter the ‘right’ door or the ‘left’ door?", options: theOptions)
    }
    return "That is not a valid choice";
}

    func getUserInput3text (input: String) -> String {
        
        if (input == "cave") {
            //  theOptions = ["cave", "treehouse"]
            return "Ok, you have chosen to enter the cave. A harmless cyclops approaches you and tells you that they can offer you two doors. One door contains the treasure chest and the other contains a hungry lion, but he doesn’t know which one. Do you enter the ‘right’ door or the ‘left’ door?"
        } else if (input == "treehouse") {
            // theOptions = ["candy store", "bowling alley"]
            return "Ok, you have chosen to enter the treehouse. A an owl swoops down towards you and tells you that he can offer you two doors. One door contains the treasure chest and the other contains a hungry lion, but he doesn’t know which one. Do you enter the ‘right’ door or the ‘left’ door?"
        } else if (input == "candy store") {
            // theOptions = ["sunken ship", "island"]
            return "Ok, you have chosen to enter the candy store. A young child approaches you and tells you that he can offer you two doors. One door contains the treasure chest and the other contains a hungry lion, but she doesn’t know which one. Do you enter the ‘right’ door or the ‘left’ door?"
        } else if (input == "bowling alley") {
            return "Ok, you have chosen to enter the bowling alley. A man approaches you and tells you that he can offer you two doors. One door contains the treasure chest and the other contains a hungry lion, but he doesn’t know which one. Do you enter the ‘right’ door or the ‘left’ door?"
        }else if (input == "sunken ship") {
            return "Ok, you have chosen to enter the sunken ship. A mermaid approaches you and tells you that she can offer you two doors. One door contains the treasure chest and the other contains a great white shark, but she doesn’t know which one.  Do you enter the ‘right’ door or the ‘left’ door?"
        }else if (input == "island") {
            return "Ok, you have chosen to swim to the island. On the island, a tropical parrot flies over to you and tells you that he can offer you two doors. One door contains the treasure chest and the other will unleash a tsunami.  Do you enter the ‘right’ door or the ‘left’ door?"
        }
        return "..."
    }

func result (input3: String) {
    if (input3 == "right") {
        print("Congratulations, you have found the treasure!") //return
    }
    if (input3 == "left") {
        print("You chose the wrong door. Better luck next time!") //return
    }
}
    
    func resultText (input: String) -> String {
        if (input == "right") {
            return "Congratulations, you have found the treasure!\n" + " Do you want to play again? Enter yes or no."
        }
        if (input == "left") {
            return "You chose the wrong door. Better luck next time!" + " Do you want to play again? Enter yes or no."
        }
        return "..."
    }

func playAgain() -> String {
    let theOptions: Set = ["yes", "no"]
    return getInput(prompt: "Do you want to play again? Enter yes or no.", options: theOptions)
    
}




func playGame(){
var theInput = "yes"
if (theInput == "yes") {
    theInput = getUserInput1()
    theInput = getUserInput2(input: theInput)
    theInput = getUserInput3(input2: theInput)
    result(input3: theInput)
}
else {
    print("Goodbye")
}
}
}

















