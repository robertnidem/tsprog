//
//  Store2ViewController.swift
//  Examen
//
//  Created by macbook on 5/20/19.
//  Copyright © 2019 nidem. All rights reserved.
//

import UIKit

class Store2ViewController: UIViewController {
    var total = 0.0

    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Total:\n$\(total)")
        totalLabel.text = "Total:\n$\(total)"
        
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
