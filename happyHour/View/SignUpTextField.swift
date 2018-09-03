//
//  SignUpTextField.swift
//  happyHour
//
//  Created by Emir Kartal on 2.09.2018.
//  Copyright © 2018 Emir Kartal. All rights reserved.
//

import UIKit

class SignUpTextField: UITextField {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        configureTextField()
        
    }
    func configureTextField() {
        
        let border = CALayer()
        let width = CGFloat(2.0)
        border.borderColor = UIColor(red: 0.9373, green: 0.9373, blue: 0.9373, alpha: 1.0).cgColor
        border.frame = CGRect(x: 0, y: frame.size.height - width, width: frame.size.width, height: frame.size.height)
        
        border.borderWidth = width
        layer.addSublayer(border)
        layer.masksToBounds = true
        
    }
}
