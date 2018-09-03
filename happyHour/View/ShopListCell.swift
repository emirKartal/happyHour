//
//  ShopListCell.swift
//  happyHour
//
//  Created by Emir Kartal on 26.07.2018.
//  Copyright © 2018 Emir Kartal. All rights reserved.
//

import UIKit

class ShopListCell: UICollectionViewCell,AddUnderLineProtocol
{
    @IBOutlet weak var shopNameLbl: UILabel!
    @IBOutlet weak var shopDistanceLbl: UILabel!
    @IBOutlet weak var shopImage: CustomImageView!
    @IBOutlet weak var favouriteBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        addLine()
        
    }
    @IBAction func addFavouriteTapped(_ sender: UIButton) {
        
        print(shopNameLbl.text!)
        sender.setTitleColor(UIColor.red, for: .normal)
        
    }
    
    
    func configureCell(name : String, distance : String) {
        
        shopNameLbl.text = name
        shopDistanceLbl.text = distance
        
    }
    
    
}
