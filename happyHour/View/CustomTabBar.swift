//
//  CustomTabBar.swift
//  happyHour
//
//  Created by Emir Kartal on 25.07.2018.
//  Copyright © 2018 Emir Kartal. All rights reserved.
//

import UIKit

class CustomTabBar: UITabBar, DropShadowProtocol {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        addDropShadow()
        
    }

}
