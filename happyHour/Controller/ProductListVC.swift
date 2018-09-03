//
//  ProductListVC.swift
//  happyHour
//
//  Created by Emir Kartal on 26.07.2018.
//  Copyright © 2018 Emir Kartal. All rights reserved.
//

import UIKit

class ProductListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backBarButton(_ sender: UIBarButtonItem) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
   
}
