//
//  TabBarController.swift
//  Persentil_Hesaplama
//
//  Created by CAGRI TEPE on 21/08/15.
//  Copyright (c) 2015 CAGRI TEPE. All rights reserved.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if flag == "erkek" {
            self.navigationItem.title = "Erkek Değerleri"
        }
        else {
            self.navigationItem.title = "Kız Değerleri"
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
       
        
}
