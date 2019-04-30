//
//  TriviaController.swift
//  Examen
//
//  Created by macbook on 4/29/19.
//  Copyright © 2019 nidem. All rights reserved.
//

import UIKit

class TriviaController: UICollectionViewCell {
    @IBOutlet weak var switchQ1: UISwitch!
    @IBOutlet weak var switchQ2: UISwitch!
    
    @IBOutlet weak var switchQ3: UISwitch!
    
    
    @IBAction func btnCheck(_ sender: Any) {
        if(switchQ1.isOn && switchQ2.isOn && switchQ3.isOn == false){
            
        } else {
        }
    }
}
