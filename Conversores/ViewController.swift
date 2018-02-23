//
//  ViewController.swift
//  Conversores
//
//  Created by Robson Adorno on 22/02/2018.
//  Copyright © 2018 Robson Adorno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnUnity2: UIButton!
    @IBOutlet weak var btnUnit1: UIButton!
    @IBOutlet weak var textFiledValue: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var lblResultUnit: UILabel!
    @IBOutlet weak var lbUnity: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showNext(_ sender: UIButton) {
        switch lbUnity.text!{
        case "Temperatura":
            lbUnity.text = "Peso"
            btnUnit1.setTitle("Kilograma", for: UIControlState.normal)
            btnUnity2.setTitle("Libra", for: UIControlState.normal)
        case "Peso":
            lbUnity.text = "Moeda"
            btnUnit1.setTitle("Real", for: UIControlState.normal)
            btnUnity2.setTitle("Dólar", for: UIControlState.normal)
        case "Moeda":
            lbUnity.text = "Distância"
            btnUnit1.setTitle("Metro", for: UIControlState.normal)
            btnUnity2.setTitle("Kilômetro", for: UIControlState.normal)
        default:
            lbUnity.text = "Temperatura"
            btnUnit1.setTitle("Celsius", for: UIControlState.normal)
            btnUnity2.setTitle("Farenheint", for: UIControlState.normal)
        }
        convert(nil)
    }
    
    @IBAction func convert(_ sender: UIButton?) {
        if let sender = sender{
            if sender == btnUnit1{
                btnUnity2.alpha = 0.5
            }else{
                btnUnit1.alpha = 0.5
            }
            sender.alpha = 1.0
        }
        switch lbUnity.text!{
        case "Temperatura":
          calcTemperature()
        case "Peso":
           calcWeight()
        case "Moeda":
           calcCurrency()
        default:
            calcDistance()
            
        }
        view.endEditing(true)
        let result = Double(lblResult.text!)!
        lblResult.text = String(format: "%.2f",result)
    }
    func calcTemperature(){
        //Guard tem uma visualizacao global, mesmo voce fazendo um guard let na hora de desenbrulhar uma variavel a mesma fica com uma visualizacao global
        guard let temperature = Double(textFiledValue.text!)else{return}
        if btnUnit1.alpha == 1.0{
            lblResult.text = "Farenheint"
            lblResult.text = String(temperature * 1.8 + 32.0)
        }else{
            lblResult.text = "Celsius"
            lblResult.text = String((temperature - 32.0) / 1.8)
        }
    }
    func calcWeight(){
        guard let weight = Double(textFiledValue.text!)else{return}
        if btnUnit1.alpha == 1.0{
            lblResult.text = "Libra"
            lblResult.text = String(weight / 2.2046)
        }else{
            lblResult.text = "KIlograma"
            lblResult.text = String(weight * 2.2046)
        }
    }
    func calcCurrency(){
        guard let currency = Double(textFiledValue.text!)else{return}
        if btnUnit1.alpha == 1.0{
            lblResult.text = "Dólar"
            lblResult.text = String(currency / 3.5)
        }else{
            lblResult.text = "Real"
            lblResult.text = String(currency * 3.5)
            
        }
    }
    
    func calcDistance(){
        guard let distance = Double(textFiledValue.text!)else{return}
        if btnUnit1.alpha == 1.0{
            lblResult.text = "Kilometro"
            lblResult.text = String(distance / 1000.0)
        }else{
            lblResult.text = "Metros"
            lblResult.text = String(distance * 1000.0)
        }
    }
}

