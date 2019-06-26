//
//  UIView+Design.swift
//  Travel App
//
//  Created by SHUBHAM AGARWAL on 09/06/19.
//  Copyright © 2019 SHUBHAM AGARWAL. All rights reserved.
//

import UIKit

class CustomView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setRadiusAndShadow()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setRadiusAndShadow()
    }
    
    func setRadiusAndShadow() {
        layer.cornerRadius = 5
        clipsToBounds = true
        layer.masksToBounds = false
        layer.shadowRadius = 5
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: 3, height: 3)
        layer.shadowColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
    }
}

extension UIView {
    func designView(borderWidth: CGFloat = 1, borderColor: UIColor = #colorLiteral(red: 0.2666666667, green: 0.7333333333, blue: 1, alpha: 1)) {
        layer.cornerRadius = frame.height / 2
        clipsToBounds = true
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor.cgColor
    }
}
