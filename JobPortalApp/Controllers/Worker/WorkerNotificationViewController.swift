//
//  WorkerNotificationViewController.swift
//  JobPortalApp
//
//  Created by Shehzad on 12/10/2020.
//  Copyright © 2020 Shehzad. All rights reserved.
//

import UIKit

class WorkerNotificationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var notifDetail: NSArray = ["Umair requested to hire you", "Sarang requested to hire you", "Shehzad requested to hire you"]

    @IBOutlet weak var tvNotification: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tvNotification.delegate = self
        self.tvNotification.dataSource = self

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.notifDetail.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "workernotif") as! NotificationTableViewCell
        cell.notifDetail.text = self.notifDetail[indexPath.row] as? String
        return cell
        
    }


}
