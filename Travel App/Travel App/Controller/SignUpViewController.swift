//
//  SignUpViewController.swift
//  Travel App
//
//  Created by SHUBHAM AGARWAL on 09/06/19.
//  Copyright © 2019 SHUBHAM AGARWAL. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var txtFullName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var btnFacebook: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnFacebook.designButton(borderWidth: 0, borderColor: .clear)
        txtFullName.addRightView(image: #imageLiteral(resourceName: "user-icon"))
        txtEmail.addRightView(image: #imageLiteral(resourceName: "email"))
        txtPassword.addRightView(image: #imageLiteral(resourceName: "eye"), isSecure: true)
    }


}
