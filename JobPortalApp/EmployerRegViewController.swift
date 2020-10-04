//
//  EmployerRegViewController.swift
//  JobPortalApp
//
//  Created by Shehzad on 30/09/2020.
//  Copyright © 2020 Shehzad. All rights reserved.
//

import UIKit
import Alamofire


class EmployerRegViewController: UIViewController {
    
    
    
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var tfMobile: UITextField!
    @IBOutlet weak var tfAddress: UITextField!
    @IBOutlet weak var btnPicture: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

    }
    @IBAction func btnSignup(_ sender: Any) {
        let Name = tfName.text!
        let Email = tfEmail.text!
        let Password = tfPassword.text!
        let Mobile = tfMobile.text!
        let Address = tfAddress.text!
        
        let url = "http://shaxad.com/apis/controller/employer/register.php?fullname=\(Name)&&email=\(Email)&&password=\(Password)&&mobile=\(Mobile)&&address=\(Address)"

        AF.request(url,method: .get,parameters: [:], encoding: URLEncoding.default).responseJSON { (response) in
            switch(response.result)
            {
                case .success(let value):
                    print(value)
                
                case .failure(let error):
                    print(error.localizedDescription)
            }
        }
    }
    

}
