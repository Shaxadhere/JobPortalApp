//
//  LoginViewController.swift
//  JobPortalApp
//
//  Created by Shehzad on 25/09/2020.
//  Copyright © 2020 Shehzad. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btnLogin(_ sender: Any) {
        if let email = tfEmail.text{
            print(email)
        }
//        print(tfEmail.text)
    }
    
    @IBAction func btnSignup(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainVC = storyboard.instantiateViewController(identifier: "signupVC")
        present(mainVC, animated: true, completion: nil)
    }
    
    @IBAction func btnSwitchToEmp(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainVC = storyboard.instantiateViewController(identifier: "emplogin")
        present(mainVC, animated: true, completion: nil)
    }
}
