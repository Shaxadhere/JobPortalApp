//
//  EmpLoginViewController.swift
//  JobPortalApp
//
//  Created by Shehzad on 03/10/2020.
//  Copyright © 2020 Shehzad. All rights reserved.
//

import UIKit

class EmpLoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func btnEmpSign(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nextView = storyboard.instantiateViewController(identifier: "empdash")
        present(nextView, animated: true)
    }
    
    
    
    @IBAction func btnSwitchToWorker(_ sender: Any) {
    }
    
    
    @IBAction func btnEmpSignup(_ sender: Any) {
    }
}

