

import Foundation

class QuestionBank {
    
    var list = [Question]()
    
    init() {
        // Creating a quiz item and appending it to the list
        let item = Question(text: "Same password using for several accounts is more secure?.", correctAnswer: false)
        
        // Add the Question to the list of questions
        list.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(Question(text: "Using words in a password is more secure?.", correctAnswer: false))
        
        list.append(Question(text: "Combining names, words along with numbers and signs is more secure?.", correctAnswer: false))
        
        list.append(Question(text: "Combining two words is a secure way to create a good password .", correctAnswer: true))
        
        list.append(Question(text: "Once a password is set, you don’t need to change the password for a long time.", correctAnswer: false))
        
        list.append(Question(text: "Using only numbers is a good password as long as it have more than 10 characters.", correctAnswer: false))
        
        list.append(Question(text: "Mixing uppercase, lowercase letters, numbers and symbols makes a strong password .", correctAnswer: true))
        
      
    }
    
}


