//
//  WelcomeViewController.swift
//
//  This is the welcome view controller - the first thign the user sees
//
//  Created by Damitha Ranasinghe on 8/28/18.
//  Copyright © 2018 Damitha Ranasinghe. All rights reserved.

import UIKit
import Firebase


class WelcomeViewController: UIViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if FIRAuth.auth()?.currentUser != nil {
            performSegue(withIdentifier: "goToChat", sender: self)
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}


