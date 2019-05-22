//
//  TriviaViewController.swift
//  Examen
//
//  Created by macbook on 4/29/19.
//  Copyright © 2019 nidem. All rights reserved.
//

import UIKit

class TriviaViewController: UIViewController {
    
    var state = 0

    @IBOutlet weak var switch2: UISwitch!
    @IBOutlet weak var switch3: UISwitch!
    @IBOutlet weak var switch4: UISwitch!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(switch4.isOn && switch2.isOn && switch3.isOn){
            state = 1
        } else{
            state = 0
        }
        if(segue.identifier == "passSegue"){
            let nextView = segue.destination as! Trvie2ViewController
            nextView.estado = state
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
