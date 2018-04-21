//
//  ViewController.swift
//  Calculadora
//
//  Created by MacBookDesarrolloTecno on 14/4/18.
//  Copyright © 2018 Technical-PC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbOperacion: UILabel!
    @IBOutlet weak var lbDigito: UILabel!
    
    var operacion:String = ""
    var resultado:Int = 0
    var digito:Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func clearResults(){
        self.lbOperacion.text = ""
        self.lbDigito.text = "0"
        operacion = ""
        resultado = 0
        digito = 0
        
    }
    
    func concatenaResultados(valor:String) {
        self.lbOperacion.text = "\(operacion)\(valor)"
        operacion = self.lbOperacion.text!
        digito = Int("\(digito)\(Int(valor)!)")!
        print("Digito Concatenado: ", digito)
        //self.lbDigito.text = valor
    }
    func concatenaOperadores(valor:String) {
        self.lbOperacion.text = "\(operacion)\(valor)"
        operacion = self.lbOperacion.text!
        self.digito = 0
    }
    
    func Suma() {
        print("Digito a Sumar: ", digito)
        resultado += digito
        self.concatenaOperadores(valor: "+")
        self.lbDigito.text = "\(resultado)"
    }
    
    func Resta() {
        print("Digito a Restar: ", digito)
        resultado -= digito
        self.concatenaOperadores(valor: "-")
        self.lbDigito.text = "\(resultado)"
    }
    
    func Multiplicacion() {
        print("Digito a Multiplicar: ", digito)
        resultado *= digito
        self.concatenaOperadores(valor: "*")
        self.lbDigito.text = "\(resultado)"
    }
    
    func Division() {
        print("Digito a Dividir: ", digito)
        resultado /= digito
        self.concatenaOperadores(valor: "/")
        self.lbDigito.text = "\(resultado)"
    }
    

    @IBAction func btnActions(_ sender: AnyObject) {
        switch sender.tag {
        case 0:
            self.concatenaResultados(valor: "0")
        case 1:
            self.concatenaResultados(valor: "1")
        case 2:
            self.concatenaResultados(valor: "2")
        case 3:
            self.concatenaResultados(valor: "3")
        case 4:
            self.concatenaResultados(valor: "4")
        case 5:
            self.concatenaResultados(valor: "5")
        case 6:
            self.concatenaResultados(valor: "6")
        case 7:
            self.concatenaResultados(valor: "7")
        case 8:
            self.concatenaResultados(valor: "8")
        case 9:
            self.concatenaResultados(valor: "9")
        case 10:
            self.clearResults()
        case 11:
            print ("11")
        case 12:
            self.Suma()
        case 13:
            self.Resta()
        case 14:
            self.Multiplicacion()
        case 15:
            self.Division()
        case 16:
            print ("16")
        case 17:
            print ("17")
        case 18:
            print ("18")
        default:
            break
            
        }
    }
    
    
    
}

