//
//  EmpLoginViewController.swift
//  JobPortalApp
//
//  Created by Shehzad on 03/10/2020.
//  Copyright © 2020 Shehzad. All rights reserved.
//

import UIKit
import Alamofire

class EmpLoginViewController: UIViewController {

    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var lblMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func btnEmpSign(_ sender: Any) {
        
        let email = tfEmail.text!
        let password = tfPassword.text!
        
        let url = "http://shaxad.com/apis/controller/employer/login.php?email=\(email)&password=\(password)"
        
        AF.request(url, method: .get, parameters: [:], encoding: URLEncoding.default).responseJSON { (response) in
            switch(response.result){
            case .success(let value):
                let data = value as! Dictionary<String, Any>
                let success = data["success"] as! String
                if success == "true" {
                    
                    let user = data["result"] as! Dictionary<String, Any>
                    let ID = user["PK_ID"] as! String
                    
                    let defaults = UserDefaults.standard
                    defaults.set(ID, forKey: "ID")
                    
                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
                    let mainVC = storyboard.instantiateViewController(identifier: "empdash")
                    mainVC.modalPresentationStyle = .fullScreen
                    self.present(mainVC, animated: true, completion: nil)
                    
                }
                else{
                    let error : NSArray = data["error"] as! NSArray
                    self.lblMessage.text = error[0] as? String
                }
                
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
        
    }
    
    
    
    @IBAction func btnSwitchToWorker(_ sender: Any) {
    }
    
    
    @IBAction func btnEmpSignup(_ sender: Any) {
    }
}

