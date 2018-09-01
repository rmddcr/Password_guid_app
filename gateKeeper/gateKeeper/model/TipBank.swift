//  Created by Damitha Ranasinghe on 8/28/18.
//  Copyright © 2018 Damitha Ranasinghe. All rights reserved.
import Foundation

class TipBank {
    
    var list = [Tip]()
    
    
    init() {
        // Creating a quiz item and appending it to the list
        let item = Tip(text: "Just think of a sentence means something to you and, possible, only to you. Now take first letters of those words and use both Upper and Lower case letters. Symbols are even better. \n Ex: \"My laptop is asus rog gl 502vs and it costs $1,499 only\" - \"mLiaRg5aiC$1o\".")
        
        // Add the Tip to the list of Tips
        list.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(Tip(text: "Chose two words and mix up letters. It’s best to choose something meaningful to you. \n Ex: \"Peanut\", \"butter\" - \"PbeUatnTuEtR\""))
        
        list.append(Tip(text: "Add numbers to vowels. This can be used for the previous method to increase the security more. \n Ex: \"PbeUatnTuEtR\" - \"Pb3U1tnT53tR\""))
        
        list.append(Tip(text: "Remove vowels. Add extra numbers and symbols to make it even more secure. \n Ex: \"PbeUatnTuEtR\" - \"PbUtnTtR\""))
        
        list.append(Tip(text: "Choose a sequence of numbers that is easy to remember. Then look for the numbers beneath them and add them. \n Ex: \"28921\" - \"2wsx8ik9ol2wsx1qaz\""))
        
        list.append(Tip(text: "Take a word and a number and add them together. \n Ex: \"Beards\" \"28921\" - \"B1e2a9r8d2s\""))
        
    }
    
}


