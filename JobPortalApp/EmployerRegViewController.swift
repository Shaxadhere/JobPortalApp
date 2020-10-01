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
        
        let url = "http://shaxad.com/projects/JobPortalAPI/controller/employer/register.php?fullname=\(Name)&&email=\(Email)&&password=\(Password)&&mobile=\(Mobile)&&address=\(Address)"
//        let data: Parameters = [
//            "fullname": "\(Name)",
//            "email": "\(Email)",
//            "password": "\(Password)",
//            "mobile": "\(Mobile)",
//            "address": "\(Address)"
//        ]
//
//        let string = stringify(json: data, prettyPrinted: false)
//
//        let parameters: Parameters = [
//            "data": string
//        ]
//
//        AF.request(
//            url,
//            method: .post,
//            parameters: parameters
//        ).responseJSON { (responseData) -> Void in
//            if responseData.value != nil {
//                print(responseData)
//            }
//        }
        
//
        AF.request(url).response { (response) in
            
            print(response.request)  // original URL request
            print(response.response) // URL response
            print(response.data)     // server data
            print(response.result)   // result of response serialization

            if let JSON = response.value {
                print("JSON: \(JSON)")
            }

        }
        
        
    }
    
    
    func stringify(json: Any, prettyPrinted: Bool = false) -> String {
        var options: JSONSerialization.WritingOptions = []
        if prettyPrinted {
            options = JSONSerialization.WritingOptions.prettyPrinted
        }

        do {
          let data = try JSONSerialization.data(withJSONObject: json, options: options)
          if let string = String(data: data, encoding: String.Encoding.utf8) {
              return string
          }
        } catch {
              print(error)
        }
        return ""
    }

}
