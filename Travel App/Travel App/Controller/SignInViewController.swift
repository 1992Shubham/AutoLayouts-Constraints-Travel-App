//
//  SignInViewController.swift
//  Travel App
//
//  Created by SHUBHAM AGARWAL on 09/06/19.
//  Copyright © 2019 SHUBHAM AGARWAL. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        txtEmail.addRightView(image: #imageLiteral(resourceName: "user-icon"))
        txtPassword.addRightView(image: #imageLiteral(resourceName: "eye_close"), isSecure: true)
    }

    @IBAction func onClickSignIN(_ sender: Any) {
        UserDefaults.standard.set("LogedIn", forKey: "accessToken")
        changeRoot()
    }
}
