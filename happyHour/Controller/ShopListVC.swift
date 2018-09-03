//
//  ShopListVC.swift
//  happyHour
//
//  Created by Emir Kartal on 25.07.2018.
//  Copyright © 2018 Emir Kartal. All rights reserved.
//

import UIKit

class ShopListVC: UIViewController {

    @IBOutlet weak var shopListCV: UICollectionView!
    
    var instance = Networking.instance
    
    override func viewDidLoad() {
        super.viewDidLoad()

        shopListCV.delegate = self
        shopListCV.dataSource = self
        
    }

}

extension ShopListVC : UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return instance.shopArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "shopCell", for: indexPath) as! ShopListCell
        
        cell.configureCell(name: instance.shopArray[indexPath.row].shopName, distance: "100 m")
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toProductListVC", sender: nil)
    }
    
}
