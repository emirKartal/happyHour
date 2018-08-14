//
//  CustomImageView.swift
//  happyHour
//
//  Created by Emir Kartal on 27.07.2018.
//  Copyright © 2018 Emir Kartal. All rights reserved.
//

import UIKit

class CustomImageView: UIImageView, AddBorderProtocol {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        addBorder()
        addShadow()
    }
    
    
    
    func addShadow() {
        
        clipsToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 1
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 15
        layer.shadowPath = UIBezierPath(roundedRect: layer.bounds, cornerRadius: 10).cgPath
        
    }

}
