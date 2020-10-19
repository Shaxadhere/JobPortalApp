//
//  LoginViewController.swift
//  JobPortalApp
//
//  Created by Shehzad on 25/09/2020.
//  Copyright © 2020 Shehzad. All rights reserved.
//

import UIKit
import Alamofire

class LoginViewController: UIViewController {

    @IBOutlet weak var tfMessage: UILabel!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btnLogin(_ sender: Any) {
        let email = self.tfEmail.text!
        let password = self.tfPassword.text!
        
        let url = "http://shaxad.com/apis/controller/worker/login.php?email=\(email)&password=\(password)"
        
        
        AF.request(url, method: .get, parameters: [:], encoding: URLEncoding.default).responseJSON { (response) in
            switch(response.result)
            {
            case .success(let value):
                let data = value as! Dictionary<String, Any>
                let success = data["success"] as! String
                if success == "true" {
                    let user = data["result"] as! Dictionary<String, Any>
                    let ID = user["PK_ID"] as! String
                    let defaults = UserDefaults.standard
                    defaults.set(ID, forKey: "ID")
                    
                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
                    let mainVC = storyboard.instantiateViewController(identifier: "workerdash")
                    mainVC.modalPresentationStyle = .fullScreen
                    self.present(mainVC, animated: true, completion: nil)
                    
                }
                else{
                    let info : NSArray = data["error"] as! NSArray
                    self.tfMessage.text = info[0] as? String
                }
            
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
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
