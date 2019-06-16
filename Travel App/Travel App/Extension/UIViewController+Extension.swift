//
//  UIViewController+Extension.swift
//  Travel App
//
//  Created by SHUBHAM AGARWAL on 09/06/19.
//  Copyright © 2019 SHUBHAM AGARWAL. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func changeRoot() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "CustomTabViewController") as? CustomTabViewController
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        appDelegate?.window?.rootViewController = vc
        appDelegate?.window?.makeKeyAndVisible()
    }
}
