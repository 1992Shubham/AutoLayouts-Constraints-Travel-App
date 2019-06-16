//
//  UIButton+Design.swift
//  Travel App
//
//  Created by SHUBHAM AGARWAL on 09/06/19.
//  Copyright © 2019 SHUBHAM AGARWAL. All rights reserved.
//

import UIKit

extension UIButton {
    
    func designButton(borderWidth: CGFloat = 1, borderColor: UIColor = #colorLiteral(red: 0.2666666667, green: 0.7333333333, blue: 1, alpha: 1)) {
       layer.cornerRadius = frame.height / 2
       clipsToBounds = true
       layer.borderWidth = borderWidth
       layer.borderColor = borderColor.cgColor
    }
}
