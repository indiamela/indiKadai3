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
        let result = zip(
            [textField1, textField2]
                .compactMap { $0?.text }
                .compactMap { Int($0) },
            [signSwitch1, signSwitch2]
                .compactMap { $0?.isOn }
                .map { $0 ? -1 : 1 }
        )
            .map { $0 * $1 }

        guard result.count == 2 else {
            resultLabel.text = "数値を入力してください"
            return
        }

        inputLabel1.text = "\(result[0])"
        inputLabel2.text = "\(result[1])"
        resultLabel.text = "\(result[0] + result[1])"
    }
}
