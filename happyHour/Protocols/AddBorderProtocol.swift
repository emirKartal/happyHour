//
//  AddBorderProtocol.swift
//  happyHour
//
//  Created by Emir Kartal on 27.07.2018.
//  Copyright © 2018 Emir Kartal. All rights reserved.
//

import UIKit

protocol AddBorderProtocol {
    
}

extension AddBorderProtocol where Self : UIImageView {
    
    func addBorder() {
        
        layer.borderWidth = 1
        layer.borderColor = UIColor(red: 0.9373, green: 0.9373, blue: 0.9373, alpha: 1.0).cgColor
        layer.cornerRadius = 15
        
    }
    
}
