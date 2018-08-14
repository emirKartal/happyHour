//
//  AddUnderLine.swift
//  happyHour
//
//  Created by Emir Kartal on 27.07.2018.
//  Copyright © 2018 Emir Kartal. All rights reserved.
//

import UIKit

protocol AddUnderLineProtocol {
    
}

extension AddUnderLineProtocol where Self : UICollectionViewCell {
    
    func addLine() {
        
        let border = CALayer()
        let width = CGFloat(2.0)
        //border.borderColor = UIColor(red: 0.9373, green: 0.9373, blue: 0.9373, alpha: 1.0).cgColor
        border.borderColor = UIColor.lightGray.cgColor
        border.frame = CGRect(x: 0, y: frame.size.height - width + 1, width: frame.size.width, height: frame.size.height)
        
        border.borderWidth = width
        layer.addSublayer(border)
        layer.masksToBounds = true
    
    }
    
}
