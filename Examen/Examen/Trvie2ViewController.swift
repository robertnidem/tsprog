//
//  Trvie2ViewController.swift
//  Examen
//
//  Created by macbook on 5/20/19.
//  Copyright © 2019 nidem. All rights reserved.
//

import UIKit

class Trvie2ViewController: UIViewController {
    var estado = 0;

    @IBOutlet weak var imagen: UIImageView!
    
    @IBOutlet weak var titlestate: UILabel!
    
    @IBOutlet weak var infoState: UILabel!
    
    @IBOutlet weak var promoBtn2: UIButton!
    
    @IBAction func actionPromoBtn(_ sender: Any) {
        let alert = UIAlertController(title: "Promo Code", message: "promocode2019", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        
        self.present(alert,animated: true)
        
    }
    
    
    override func viewDidLoad() {
        if(estado == 0){
            self.imagen.image = UIImage(named: "fail")
            self.title = "Trivia Incorrecta"
            self.titlestate.text = "Lastima!"
            self.infoState.text = "Fallaste la trivia, pero no te preocupes, puedes volver a intentarlo!"
            promoBtn2.isEnabled = false
            promoBtn2.alpha = 0
        } else{
            self.imagen.image = UIImage(named: "correct")
            self.title = "Trivia Correcta"
            self.titlestate.text = "Felicidades!"
            self.infoState.text = "Contestaste correctamente la trivia, ya puedes obtener tu codigo de promocion!"
            promoBtn2.isEnabled = true
            promoBtn2.alpha = 1
        }
        
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
