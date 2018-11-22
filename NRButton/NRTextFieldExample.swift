//
//  ViewController.swift
//  NRButton
//
//  Created by Michael Westbrooks on 11/21/18.
//  Copyright © 2018 RedRooster Technologies Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var email: NRTextField!
    @IBOutlet var password: NRTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //  Pass functionality to left & right buttons within text fields.
        password.rightButton?.addTarget(self,
                                        action: #selector(self.showPassword),
                                        for: .touchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func showPassword() {
        if password.isSecureTextEntry {
            password.isSecureTextEntry = false
        } else {
            password.isSecureTextEntry = true
        }
    }

}

