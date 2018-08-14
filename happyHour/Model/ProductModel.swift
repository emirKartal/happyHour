//
//  ProductModel.swift
//  happyHour
//
//  Created by Emir Kartal on 26.07.2018.
//  Copyright © 2018 Emir Kartal. All rights reserved.
//

import Foundation

struct Product {
    
    private var _shopID : Int
    private var _productID : Int
    private var _productName : String
    private var _productPrice : String
    private var _productReducedPrice : String
    private var _productImage : String
    private var _isQuantityPromotion : Bool
    private var _isTimePromotion : Bool
    
    var shopID : Int {
        return _shopID
    }
    var productID : Int {
        return _productID
    }
    var productName : String {
        return _productName
    }
    var productPrice : String {
        return _productPrice
    }
    var productReducedPrice : String {
        return _productReducedPrice
    }
    var productImage : String {
        return _productImage
    }
    var isQuantityPromotion : Bool {
        return _isQuantityPromotion
    }
    var isTimePromotion : Bool {
        return _isTimePromotion
    }
    
    init(shopID : Int, productID : Int, productName : String, productPrice : String, productReducedPrice: String, productImage : String, isQuantityPromotion : Bool, isTimePromotion : Bool ) {
        
        self._shopID = shopID
        self._productID = productID
        self._productName = productName
        self._productPrice = productPrice
        self._productReducedPrice = productReducedPrice
        self._productImage = productImage
        self._isQuantityPromotion = isQuantityPromotion
        self._isTimePromotion = isTimePromotion
        
    }
    
}
