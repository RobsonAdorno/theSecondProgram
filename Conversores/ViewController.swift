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
    }
    func calcTemperature(){
        
    }
    func calcWeight(){
        
    }
    func calcCurrency(){
        
    }
    
    func calcDistance(){
        
    }
}

