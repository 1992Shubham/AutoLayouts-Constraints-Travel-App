//
//  UITextField+Extension.swift
//  Travel App
//
//  Created by SHUBHAM AGARWAL on 09/06/19.
//  Copyright © 2019 SHUBHAM AGARWAL. All rights reserved.
//

import UIKit

extension UITextField {
    
    func addRightView(image: UIImage, isSecure: Bool = false) {
        let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 30, height: 30))
        imageView.image = image
        
        if isSecure {
            let button = UIButton(frame: imageView.frame)
            button.setImage(#imageLiteral(resourceName: "eye"), for: .normal)
            button.setImage(#imageLiteral(resourceName: "eye_close"), for: .selected)
            button.isSelected = true
            button.addTarget(self, action: #selector(onClickEye), for: .touchUpInside)
            rightView = button
        } else {
            rightView = imageView
        }
        rightViewMode = .always
    }
    
    @objc func onClickEye(sender: UIButton) {
        self.isSecureTextEntry = !self.isSecureTextEntry
        sender.isSelected = !sender.isSelected
    }
}
