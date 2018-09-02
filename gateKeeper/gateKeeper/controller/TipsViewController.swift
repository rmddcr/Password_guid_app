//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit


class TipsViewController: UIViewController {
    
    //The UI Elements from the storyboard   are already linked up for you.

    
    @IBOutlet weak var questionLabel: UILabel!
 
    //    @IBOutlet weak var scoreLabel: UILabel!

    
    //Place your instance variables here
    
    let allTips = TipBank()
//    var pickedAnswer : Bool = false
    var tipNumber : Int = -1
//    var score : Int = 0
    
    
    // This gets called when the UIViewController is loaded into memory when the app starts
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }
    
    // Nothing to modify here. This gets called when the system is low on memory
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    
    @IBAction func nextBtnPress(_ sender: Any) {
        tipNumber += 1
        updateUI()
        nextTip()
    }
    
    
    @IBAction func prevBtnPress(_ sender: Any) {
        tipNumber -= 1
        updateUI()
        previousTip()
        
    }
    
    
    
    
    
    
    // This method will update all the views on screen (progress bar, score label, etc)
    func updateUI() {
        
        
    
    }
    
    //This method will update the question text and check if we reached the end.
    func nextTip() {
        
        if tipNumber <= (allTips.list.count-1) {
            questionLabel.text = allTips.list[tipNumber].tip
        }
        else {
            let alert = UIAlertController(title: "Alert", message: "No next tips !", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Ok", style: .default, handler: { UIAlertAction in
                self.end()
            })
          
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
        }
        
        updateUI()
        
    }
    
// this method will load the previous tip
    func previousTip() {
        
        if tipNumber >= 0 {
            questionLabel.text = allTips.list[tipNumber].tip
        }
        else {
            tipNumber = -1
            let alert = UIAlertController(title: "Alert", message: "No previous tip !", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Ok", style: .default, handler: { UIAlertAction in
                self.start()
            })
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
        }
        
        updateUI()
        
    }
    
//initiate the tip
    func start() {

        tipNumber = 0

        updateUI()

    }
    //load last tip
    func end() {
        
        tipNumber = allTips.list.count - 1
        
        updateUI()
        
    }
    
}   // End of the class

