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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        shopListCV.delegate = self
        shopListCV.dataSource = self
        
    }

}

extension ShopListVC : UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "shopCell", for: indexPath) as! ShopListCell
        
        return cell
    }
    
}
