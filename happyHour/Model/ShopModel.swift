//
//  ShopModel.swift
//  happyHour
//
//  Created by Emir Kartal on 25.07.2018.
//  Copyright © 2018 Emir Kartal. All rights reserved.
//

import Foundation

struct Shop {
    
    private var _shopID : Int
    private var _shopName : String
    private var _shopLat : Double
    private var _shopLong: Double
    private var _shopCategory : String
    private var _shopLogo : String
    //images
    
    
    var shopID : Int {
        return _shopID
    }
    var shopName : String {
        return _shopName
    }
    var shopLat :  Double {
        return _shopLat
    }
    var shopLong : Double {
        return _shopLong
    }
    var shopCategory : String {
        return _shopCategory
    }
    var shopLogo : String {
        return _shopLogo
    }
    
    init(shopID : Int, shopName : String, shopLat : Double, shopLong: Double, shopCategory: String, shopLogo: String) {
        
        self._shopID = shopID
        self._shopName = shopName
        self._shopLat = shopLat
        self._shopLong = shopLong
        self._shopCategory = shopCategory
        self._shopLogo = shopLogo
        
    }
    
}

    


