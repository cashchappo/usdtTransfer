//
//  ViewController.swift
//  usdtStore
//
//  Created by Danil Bochkarev on 15.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var walletTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func loginTapped(_ sender: UIButton) {
        
        
    }
    
    //функция, чтобы можно было вернуться назад к 1 экрану
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue) {
        guard let svc = segue.source as? SendViewController else { return }
        
        let a = svc.usdtTF.text!
        let b = svc.senderTF.text!
        
        if a.count == 0 || b.count == 0 {
            self.resultLabel.text = "PAYMENT ERROR"
        } else {
            self.resultLabel.text = "YOU SENT \(a)$ FOR \(b)"
        }
    }
    

    
    //при нажатии на кноку будет искать код SendViewController
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SendViewController else { return }
        //когда найдет данные, то из введеного первого окна перенесем данные на 2 экран
        dvc.login = walletTF.text
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
}

