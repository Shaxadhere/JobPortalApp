//
//  Functions.swift
//  JobPortalApp
//
//  Created by Shehzad on 04/10/2020.
//  Copyright © 2020 Shehzad. All rights reserved.
//

import Foundation


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
