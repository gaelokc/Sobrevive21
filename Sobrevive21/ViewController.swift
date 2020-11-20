//
//  ViewController.swift
//  Sobrevive21
//
//  Created by user176704 on 20/11/2020.
//  Copyright © 2020 gael. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cartaIzq: UIImageView!
    
    @IBOutlet weak var cartaDer: UIImageView!
    
    @IBOutlet weak var valorActual: UILabel!
    var valor = 10
    
    @IBOutlet weak var botonDer: UIButton!
    @IBOutlet weak var botonIzq: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func elegirIzq(_ sender: Any) {
        //Para sacar un número aleatorio entre 0 y 12 con los que luego elegiremos las cartas
        let numeroCartaIzq = arc4random_uniform(7)+8
        
        let numeroCartaDer = arc4random_uniform(7)+1
        
        //cambia la vista de la carta
        cartaIzq.image = UIImage(named: "carta" + String(numeroCartaIzq))
        
        cartaDer.image = UIImage(named: "carta" + String(numeroCartaDer))
        
        //Usa el valor obtenido y lo traduce en un entero
        var valorCartaIzq = Int(numeroCartaIzq)
        
        switch valorCartaIzq {
        case 8:
            valorCartaIzq = 1
            
        case 9:
            valorCartaIzq = 2
            
        case 10:
            valorCartaIzq = 3
            
        case 11:
            valorCartaIzq = 4
            
        case 12:
            valorCartaIzq = 5
            
        case 13:
            valorCartaIzq = 6
            
        case 14:
            valorCartaIzq = 7
            
        default:
            valorCartaIzq = 1
        }
        
        //suma el numero obtenido aleatoriamente
        valor = valor + valorCartaIzq
        
        valorActual.text = String(valor)
        
        
        if (valor < 0 || valor > 21) {
            
            valorActual.text = "PERDISTE"
            self.botonIzq.isHidden = true
            self.botonDer.isHidden = true
        }
    }
    
    @IBAction func elegirDer(_ sender: Any) {
        //Para sacar un número aleatorio entre 0 y 12 con los que luego elegiremos las cartas
        let numeroCartaIzq = arc4random_uniform(7)+8
        
        let numeroCartaDer = arc4random_uniform(7)+1
        
        //cambia la vista de la carta
        cartaIzq.image = UIImage(named: "carta" + String(numeroCartaIzq))
        
        cartaDer.image = UIImage(named: "carta" + String(numeroCartaDer))
        
        var valorCartaDer = Int(numeroCartaDer)
        
        switch valorCartaDer{
            case 1:
                valorCartaDer = -1
                
            case 2:
                valorCartaDer = -2
                
            case 3:
                valorCartaDer = -3
                
            case 4:
                valorCartaDer = -4
                
            case 5:
                valorCartaDer = -5
                
            case 6:
                valorCartaDer = -6
                
            case 7:
                valorCartaDer = -7
        default:
            valorCartaDer = -1
        }
        
        valor = valor - Int(numeroCartaDer)
        
        valorActual.text = String(valor)
        
        if (valor < 0 || valor > 21) {
            
            valorActual.text = "PERDISTE"
            self.botonIzq.isHidden = true
            self.botonDer.isHidden = true
        }
    }
}

