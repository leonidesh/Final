//
//  ViewController.swift
//  Conversion Calculator UI
//
//  Created by 刘洋 on 4/12/19.
//  Copyright © 2019 Yang Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func Converter(_ sender: Any) {
//        let alert  = UIAlertController(nibName: "Choose Coverter", bundle: UIAlertControllerStyle.actionSheet)
        let alertController = UIAlertController(title: "", message: "choose Converter", preferredStyle: .actionSheet)
        let action1 = UIAlertAction(title: "fahrenheit to celcius", style: .default) { (action) in
            let number1 = Double(self.textField1.text!)!
            let number2 = (number1 - 32) / 1.8
            
            self.textField1.text = "\(number1) °F"
            self.textField2.text = "\(number2) °C"
        }
        let action2 = UIAlertAction(title: "celcius to fahrenheit", style: .default) { (action) in
            let number1 = Double(self.textField1.text!)!
            let number2 = number1*1.8 + 32
            self.textField1.text = "\(number1)°C"
            self.textField2.text = "\(number2)°F"
        }
        let action3 = UIAlertAction(title: "miles to kilometers", style: .default) { (action) in
            let number1 = Double(self.textField1.text!)!
            let number2 = number1*1.6
            self.textField1.text = "\(number1)mi"
            self.textField2.text = "\(number2)km"
        }
        let action4 = UIAlertAction(title: "kilometers to miles", style: .default) { (action) in
            let number1 = Double(self.textField1.text!)!
            let number2 = number1/1.6
            self.textField1.text = "\(number1)km"
            self.textField2.text = "\(number2)mi"
        }
        
        alertController.addAction(action1)
        alertController.addAction(action2)
        alertController.addAction(action3)
        alertController.addAction(action4)
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func button1Click(_ sender: UIButton) {
        self.textField1.text?.append("1")
    }
    @IBAction func button2Click(_ sender: UIButton) {
        self.textField1.text?.append("2")
    }
    @IBAction func button3Click(_ sender: UIButton) {
        self.textField1.text?.append("3")
    }
    
    @IBAction func button4Click(_ sender: UIButton) {
        self.textField1.text?.append("4")
    }
    @IBAction func button5Click(_ sender: UIButton) {
        self.textField1.text?.append("5")
    }
    @IBAction func button6Click(_ sender: UIButton) {
        self.textField1.text?.append("6")
    }
    @IBAction func button7Click(_ sender: UIButton) {
        self.textField1.text?.append("7")
    }
    @IBAction func button8Click(_ sender: UIButton) {
        self.textField1.text?.append("8")
    }
    @IBAction func button9Click(_ sender: UIButton) {
        self.textField1.text?.append("9")
    }
    @IBAction func button0Click(_ sender: UIButton) {
        self.textField1.text?.append("0")
    }
    @IBAction func buttonPointClick(_ sender: UIButton) {
        self.textField1.text?.append(".")
    }
    @IBAction func buttonClearClick(_ sender: UIButton) {
        self.textField1.text = ""
        self.textField2.text = ""
    }
    @IBAction func plus(_ sender: UIButton) {
        let str = self.textField1.text!
        if (self.textField1.text?.starts(with: "-"))! {
            self.textField1.text = String(str[str.index(str.startIndex, offsetBy: 1)..<str.endIndex])
        } else {
            self.textField1.text = "-\(str)"
        }
    }
}
