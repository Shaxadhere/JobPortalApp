//
//  EmployerProfileViewController.swift
//  JobPortalApp
//
//  Created by Shehzad on 12/10/2020.
//  Copyright © 2020 Shehzad. All rights reserved.
//

import UIKit

class EmployerProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tvProfileMain: UITableView!
    
    let mainProfile = ["Personal Info", "My Jobs"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tvProfileMain.delegate = self
        tvProfileMain.dataSource = self

        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.mainProfile.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "empprofilecell") as! EmployerProfileTableViewCell
        cell.lblTitle.text = mainProfile[indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        switch indexPath.row {
            
        case 0:
            print("profile")
        case 1:
            let vc = storyboard.instantiateViewController(identifier: "myjobsvc")
            present(vc, animated: true, completion: nil)
            print("jobs")
        default:
            print("nothing")
            
        }
        
    }
    
    

}
