//
//  StoreViewController.swift
//  Examen
//
//  Created by macbook on 4/29/19.
//  Copyright © 2019 nidem. All rights reserved.
//

import UIKit

class StoreViewController: UIViewController {
    var cant2 = 0.0
    var cant3 = 0.0
    var cant4 = 0.0
    var cant1 = 0.0
    @IBOutlet weak var lbl1: UILabel!
    
    @IBOutlet weak var lbltotal: UILabel!
    @IBAction func stpr1(_ sender: UIStepper) {
        cant1=sender.value
        lbl1.text = String(sender.value)
    }
    
    @IBOutlet weak var lbl2: UILabel!
    
    @IBOutlet weak var lbl3: UILabel!
    
    @IBOutlet weak var lbl4: UILabel!
    
    
    @IBAction func stpr2(_ sender: UIStepper) {
        cant2 = sender.value
        lbl2.text = String(sender.value)
    }
    
    @IBAction func srp3(_ sender: UIStepper) {
        cant3 = sender.value
        lbl3.text = String(sender.value)
    }
    @IBAction func stpr4(_ sender: UIStepper) {
        cant4 = sender.value
        lbl4.text = String(sender.value)
    }
    @IBOutlet weak var descuento: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func comprar(_ sender: Any) {
        
        var total = cant1*150+cant2*50+cant3*750+cant4*250
        if descuento.text == "fanstrava"{
            total = total/2
            
            
        }
        lbltotal.text = String (total)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
