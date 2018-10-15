//
//  Networking.swift
//  happyHour
//
//  Created by Emir Kartal on 12.08.2018.
//  Copyright © 2018 Emir Kartal. All rights reserved.
//

import Foundation
import FirebaseDatabase

class Networking {
    
    static let instance = Networking()

    var shopArray : [Shop] = []
    
    func getShops() {
        
        Database.database().reference().child("eeb3215fgsfnuvj").child("shops").observe(.value) { snapshot in
            
            if let shopsDictionary = snapshot.value as? NSDictionary {
                
                for shop in shopsDictionary.allKeys {
                    
                    let tempShopDictionary = shopsDictionary[shop] as! NSDictionary
                    
                    self.shopArray.append(Shop(shopID: tempShopDictionary["shop_id"] as! Int, shopName: tempShopDictionary["shop_name"] as! String, shopLat: tempShopDictionary["shop_lat"] as! Double, shopLong: tempShopDictionary["shop_long"] as! Double, shopCategory: tempShopDictionary["shop_category"] as! String, shopLogo: tempShopDictionary["shop_logo"] as! String))
                    
                }
                
            }
            
        }
    
    }
    
    //TODO: getPromotions by id function will add here... as well as try rxfirebase podfile
    
}
