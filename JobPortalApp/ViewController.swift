//
//  ViewController.swift
//  JobPortalApp
//
//  Created by Shehzad on 25/09/2020.
//  Copyright © 2020 Shehzad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func btnSignup(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainVC = storyboard.instantiateViewController(identifier: "signupVC")
        present(mainVC, animated: true, completion: nil)
    }
    
    @IBAction func btnLogin(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainVC = storyboard.instantiateViewController(identifier: "loginVC")
        present(mainVC, animated: true, completion: nil)
    }
}

