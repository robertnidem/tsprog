//
//  DiscografiaViewController.swift
//  Examen
//
//  Created by macbook on 5/8/19.
//  Copyright © 2019 nidem. All rights reserved.
//

import UIKit

class DiscografiaViewController: UIViewController {


   /* override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        <#code#>
    }*/
    @IBOutlet weak var primerActo: UIButton!
    
    @IBOutlet weak var sentimientos: UIButton!
    @IBOutlet weak var requiem: UIButton!
    
    @IBOutlet weak var raices: UIButton!
    
    @IBAction func primerActoButton(_ sender: Any) {
        performSegue(withIdentifier: "disco", sender: primerActo)
    }
    
    @IBAction func sentimientosButton(_ sender: Any) {
        performSegue(withIdentifier: "disco", sender: sentimientos)
    }
    
    @IBAction func requiemButton(_ sender: Any) {
        performSegue(withIdentifier: "disco", sender: requiem)
    }
    
    @IBAction func raicesButton(_ sender: Any) {
        performSegue(withIdentifier: "disco", sender: raices)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        if sender == primerActo {
            segue.destination.navigationItem.title = "Primer Acto"
        } else if sender == sentimientos {
            segue.destination.navigationItem.title = "Sentimientos"
        } else if sender == requiem{
            segue.destination.navigationItem.title = "Requiem"
        }else if sender == raices{
            segue.destination.navigationItem.title = "Raices"
        }
        
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
