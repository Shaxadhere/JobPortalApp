//
//  EmployerHomeViewController.swift
//  JobPortalApp
//
//  Created by Shehzad on 12/10/2020.
//  Copyright © 2020 Shehzad. All rights reserved.
//

import UIKit
import Alamofire

class EmployerHomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let Names = ["Shehzad Ahmed", "Sarang Saif", "Umair Khan", "Asad Qadri"]
    let Skills = ["iOS Developer", "Graphic Desisgner", "Wordpress Developer", "Android Developer"]
    
    var Workers: Array<Any>?
    
    var ID: Int = 0
    
    
    @IBOutlet weak var tvWorkerProfile: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        ID = UserDefaults.standard.integer(forKey: "ID")
        fetchWorkers()
        self.tvWorkerProfile.rowHeight = 150
        self.tvWorkerProfile.delegate = self
        self.tvWorkerProfile.dataSource = self

    }
    
    func fetchWorkers(){
        
        let url = "http://shaxad.com/apis/controller/employer/workerList.php?employerId=\(ID)"
     
               AF.request(url, method: .get, parameters: [:], encoding: URLEncoding.default).responseJSON { (response) in
                   switch(response.result)
                   {
                       case .success(let value):
                           let data = value as! Dictionary<String, Any>
                           let success = data["success"] as! String
                           
                           if success == "true" {
                            
                            let workersList = data["result"] as? NSArray
                            
                            if let workers = workersList{
                                self.Workers = workers as? Array<Any>
                            }
                            
                          
                            
                           }
                           else{
                               print("server error")
                           }
                       
                       
                       case .failure(let error):
                           print(error.localizedDescription)
                   }
               }
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if let count = self.Workers{
            return self.Workers!.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "workerprofilecell") as! WorkerProfileTableViewCell
        
        let name = Workers![indexPath.row]
        cell.workerName.text = name as? String
        cell.workerName.text = Names[indexPath.row]
        cell.workerSkill.text = Skills[indexPath.row]
        
        return cell
    }

}
