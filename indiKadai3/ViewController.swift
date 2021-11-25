//
//  ViewController.swift
//  indiKadai3
//
//  Created by Taishi Kusunose on 2021/11/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var inputLabel1: UILabel!
    @IBOutlet weak var inputLabel2: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var signSwitch1: UISwitch!
    @IBOutlet weak var signSwitch2: UISwitch!

    @IBAction func calcButton(_ sender: Any) {
        guard let input1 = textField1.text
                .flatMap({Int($0)})
                .flatMap({signSwitch1.isOn ? -1*$0 : $0}),
                let input2 = textField2.text
                .flatMap({Int($0)})
                .flatMap({signSwitch2.isOn ? -1*$0 : $0})
        else {
            resultLabel.text = "数値を入力してください"
            return
        }
        inputLabel1.text = "\(input1)"
        inputLabel2.text = "\(input2)"
        resultLabel.text = "\(input1 + input2)"
    }
}

