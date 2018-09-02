//
//  LogInViewController.swift
//  This is the view controller where users login
//  Created by Damitha Ranasinghe on 8/28/18.
//  Copyright © 2018 Damitha Ranasinghe. All rights reserved.

import UIKit
import Firebase
import SVProgressHUD

class LogInViewController: UIViewController {

    //Textfields pre-linked with IBOutlets
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

   
    @IBAction func logInPressed(_ sender: AnyObject) {

        SVProgressHUD.show()
        
        FIRAuth.auth()?.signIn(withEmail: emailTextfield.text!, password: passwordTextfield.text!, completion: { (user, error) in
            if error != nil {
                print(error!)
            }
            else {
                SVProgressHUD.dismiss()
                print("login successful")
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
        })
        
    }
    


    
}  
