//
//  CustomNavigationBar.swift
//  happyHour
//
//  Created by Emir Kartal on 26.07.2018.
//  Copyright © 2018 Emir Kartal. All rights reserved.
//

import UIKit

class CustomNavigationBar: UINavigationBar, DropShadowProtocol {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        addDropShadow()
        
    }

}
