//
//  WorkerProfileViewController.swift
//  JobPortalApp
//
//  Created by Shehzad on 11/10/2020.
//  Copyright © 2020 Shehzad. All rights reserved.
//

import UIKit
import Alamofire

class WorkerProfileViewController: UIViewController {
    

    @IBOutlet weak var lblFullName: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        let ID = defaults.integer(forKey: "ID")
        
        let url = "http://shaxad.com/apis/controller/worker/profile.php?workerID=\(ID)"
        
        AF.request(url, method: .post, parameters: [:], encoding: URLEncoding.default).responseJSON { (response) in
            switch(response.result)
            {
                case .success(let value):
                    let data = value as! Dictionary<String, Any>
                    let success = data["success"] as! String
                    
                    if success == "true" {
                        let result = data["result"] as! Dictionary<String, Any>
                        self.lblFullName.text = result["FullName"] as? String
                        self.lblEmail.text = result["Email"] as? String
                        
                        
                    }
                
                case .failure(let error):
                    print(error)
            }
        }
    }
    
}
