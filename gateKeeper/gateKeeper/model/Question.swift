//  Created by Damitha Ranasinghe on 8/28/18.
//  Copyright © 2018 Damitha Ranasinghe. All rights reserved.

import Foundation

class Question {
    
    let answer : Bool
    let questionText : String
    
    init(text : String, correctAnswer : Bool) {
        questionText = text
        answer = correctAnswer
    }
    
}

