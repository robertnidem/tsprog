//
//  DIiscosTableViewController.swift
//  Examen
//
//  Created by macbook on 5/8/19.
//  Copyright © 2019 nidem. All rights reserved.
//

import UIKit

class DIiscosTableViewController: UITableViewController {
    
    var primerActoCD: [Cancion] = [
        Cancion(nombre: "Comienza el espectaculo", duracion: "00:26", precio: "$9.00"),
        Cancion(nombre: "Dios", duracion: "5:37", precio: "$12.00"),
        Cancion(nombre: "Calma tu dolor", duracion: "4:18", precio: "$12.00"),
        Cancion(nombre: "Oveja Negra", duracion: "4:13", precio: "$12.00"),
        Cancion(nombre: "Miedo en el alma", duracion: "5:00", precio: "$12.00"),
        Cancion(nombre: "Carcel de Piel y Hueso", duracion: "6:38", precio: "12.00"),
        Cancion(nombre: "...Y en Soledad Me Lamento", duracion: "4:38", precio: "$12.00"),
        Cancion(nombre: "Recuerdos", duracion: "6:20", precio: "$12.00"),
        Cancion(nombre: "Mi Tempestad", duracion: "4:47", precio: "$12.00"),
        Cancion(nombre: "Diosa Del Infierno Azul", duracion: "4:44", precio: "$12.00"),
        Cancion(nombre: "Lagrimas de Sangre", duracion: "4:21", precio: "$12.00")
    ]
    
    var sentimientosCD: [Cancion] = [
        Cancion(nombre: "Miedo", duracion: "3:38", precio: "$12.00"),
        Cancion(nombre: "Esperanza", duracion: "5:46", precio: "$12.00"),
        Cancion(nombre: "Impotencia", duracion: "4:51", precio: "$12.00"),
        Cancion(nombre: "Arrepentimiento", duracion: "7:14º", precio: "$12.00"),
        Cancion(nombre: "Pasion", duracion: "6:21", precio: "$12.00"),
        Cancion(nombre: "Odio", duracion: "6:20", precio: "$12.00"),
        Cancion(nombre: "Frustracion", duracion: "5:07", precio: "$12.00"),
        Cancion(nombre: "Desilucion", duracion: "5:52", precio: "$12.00"),
        Cancion(nombre: "Soledad", duracion: "5:57", precio: "$12.00"),
        Cancion(nombre: "Duda", duracion: "6:22", precio: "$12.00"),
        Cancion(nombre: "Dolor", duracion: "9:53", precio: "$15.00")
    ]
    
    var requiemCD: [Cancion] = [
        Cancion(nombre: "Deja de llorar", duracion: "4:01", precio: "$12.00"),
        Cancion(nombre: "Grando", duracion: "5:31", precio: "$12.00"),
        Cancion(nombre: "Mascara de Seduccion", duracion: "4:30", precio: "$12.00"),
        Cancion(nombre: "Hombre", duracion: "5:25", precio: "$12.00"),
        Cancion(nombre: "Paraiso Perdido", duracion: "5:38", precio: "$12.00"),
        Cancion(nombre: "Nudos", duracion: "4:31", precio: "$12.00"),
        Cancion(nombre: "El dia de mañana", duracion: "4:04", precio: "$12.00"),
        Cancion(nombre: "Perdido", duracion: "3:02", precio: "$12.00"),
        Cancion(nombre: "Hermanos", duracion: "402", precio: "$12.00"),
        Cancion(nombre: "Tu escencia", duracion: "3:58", precio: "$12.00"),
        Cancion(nombre: "Requiem", duracion: "7:21", precio: "$12.00"),
        Cancion(nombre: "Inmortal", duracion: "1:27", precio: "$12.00"),
        Cancion(nombre: "Eloise", duracion: "5:57", precio: "$12.00")
    
    ]
    
    var raicesCD: [Cancion] = [
        Cancion(nombre: "Cuestion de fe", duracion: "4:09", precio: "$12.00"),
        Cancion(nombre: "Felicidad absurda", duracion: "4:39", precio: "$12.00"),
        Cancion(nombre: "Que te follen", duracion: "4:09", precio: "$12.00"),
        Cancion(nombre: "Sin amar", duracion: "4:05", precio: "$12.00"),
        Cancion(nombre: "Maldita obscuridad", duracion: "4:34", precio: "$12.00"),
        Cancion(nombre: "Impotencia II", duracion: "5:02", precio: "$12.00"),
        Cancion(nombre: "Un millon de sueños", duracion: "4:04", precio: "$12.00"),
        Cancion(nombre: "Agonia", duracion: "4:16", precio: "$12.00"),
        Cancion(nombre: "La tormenta", duracion: "4:04", precio: "$12.00"),
        Cancion(nombre: "La cicatriz", duracion: "5:22", precio: "$12.00"),
        Cancion(nombre: "Maquinas", duracion: "3:51", precio: "$12.00"),
        Cancion(nombre: "Bucle", duracion: "4:51", precio: "$12.00"),
        Cancion(nombre: "Raices", duracion: "6:57", precio: "$15.00")
    
    ]
    
    var titulo: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        if navigationItem.title == "Primer Acto" {
            titulo = "Primer Acto"
            imagen.image = UIImage(named: "primeracto")
            print("entre a 1")
        }else if navigationItem.title == "Sentimientos"{
            titulo = "Sentimientos"
            imagen.image = UIImage(named: "sentimientos")
        }else if navigationItem.title == "Requiem"{
            titulo = "Requiem"
            imagen.image = UIImage(named: "requiem")
        }else if navigationItem.title == "Raices"{
            titulo = "Raices"
            imagen.image = UIImage(named: "raices")
        }
        titulo = navigationItem.title!
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    @IBOutlet weak var imagen: UIImageView!
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if titulo == "Primer Acto" {

            return primerActoCD.count
        }else if titulo == "Sentimientos"{
            return sentimientosCD.count
        }else if titulo == "Requiem"{
            return requiemCD.count
        }else if titulo == "Raices"{
            return raicesCD.count
        }else{
            return raicesCD.count
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        var cancion: Cancion
        if titulo == "Primer Acto"{
            cancion = primerActoCD[indexPath.row]
            
        }else if titulo == "Sentimientos"{
            cancion = sentimientosCD[indexPath.row]
        }else if titulo == "Requiem"{
            cancion = requiemCD[indexPath.row]
            
        }else if titulo == "Raices"{
            cancion = raicesCD[indexPath.row]
            
        }else{
            cancion = raicesCD[indexPath.row]
        }
        
        cell.textLabel?.text = "\(cancion.nombre) - \(cancion.duracion) - \(cancion.precio)"
        

        return cell
    }
    /*override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if navigationItem.title == "Primer Acto"{
            let cancion = primerActoCD[indexPath.row]
            print("\(cancion.nombre) \(indexPath)")
        }else if navigationItem.title == "Sentimientos"{
            let cancion = primerActoCD[indexPath.row]
            print("\(cancion.nombre) \(indexPath)")
        }else if navigationItem.title == "Requiem"{
            let cancion = primerActoCD[indexPath.row]
            print("\(cancion.nombre) \(indexPath)")
        }else /*if navigationItem.title == "Raices"*/{
            let cancion = primerActoCD[indexPath.row]
            print("\(cancion.nombre) \(indexPath)")
        }
        
    }*/
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
