//
//  LoginButton.swift
//  happyHour
//
//  Created by Emir Kartal on 2.09.2018.
//  Copyright © 2018 Emir Kartal. All rights reserved.
//

import UIKit

class LoginButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.backgroundColor = UIColor.darkGray
        self.setTitleColor(UIColor.white, for: .normal)
        self.layer.cornerRadius = 12
        
    }

}
