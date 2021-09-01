//
//  ViewController.swift
//  calculadorapropinas_rv
//
//  Created by Alumno on 8/31/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblValorPorcentaje: UILabel!
    @IBOutlet weak var txtCuenta: UITextField!
    
    @IBOutlet weak var sldPorcentaje: UISlider!
    
    @IBOutlet weak var lblporcentaje: UILabel!
    @IBOutlet weak var lblpropina: UILabel!
    
    @IBOutlet weak var lbltotalconpropina: UILabel!
    
    @IBOutlet weak var sldPorcentajes: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func EditEndCuenta(_ sender: Any) {
    }
    @IBAction func doChangePorcentaje(_ sender: Any) {
        lblValorPorcentaje.text = "\(String(Int(sldPorcentajes.value)))%"
        if txtCuenta.text != nil && txtCuenta.text != "" {
            let cuenta = Float (txtCuenta.text!)!
            let porcentaje = Float(Int(sldPorcentajes.value))
            let propina = cuenta * (porcentaje / 100.0)
            
            
            lblValorPorcentaje.text = "$\(String(format: "%.2f", propina))"
            
            lbltotalconpropina.text = "$\(String(format: "%.2f", propina))"

            }
        
    }
    
}

