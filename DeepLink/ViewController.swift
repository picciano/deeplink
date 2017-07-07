//
//  ViewController.swift
//  DeepLink
//
//  Created by Anthony Picciano on 5/3/17.
//  Copyright © 2017 Anthony Picciano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var schemeField: UITextField!
    @IBOutlet weak var hostField: UITextField!
    @IBOutlet weak var pathField: UITextField!
    @IBOutlet weak var queryField: UITextField!

    @IBAction func openAction(_ sender: Any) {
        var urlString = String()
        
        if let scheme = schemeField.text {
            urlString.append("\(scheme):")
        }
        
        if let host = hostField.text {
            urlString.append("//\(host)")
        }
        
        if let path = pathField.text {
            urlString.append("/\(path)")
        }
        
        if let query = queryField.text {
            urlString.append(query)
        }
        
        if let url = URL(string: urlString) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }

}

