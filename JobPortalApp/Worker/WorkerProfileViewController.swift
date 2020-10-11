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
                        <#code#>
                    }
                    print(value)
                
                case .failure(let error):
                    print(error)
            }
        }
    }
    
}