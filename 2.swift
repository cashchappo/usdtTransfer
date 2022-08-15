//
//  SendViewController.swift
//  usdtStore
//
//  Created by Danil Bochkarev on 15.08.2022.
//

import UIKit

class SendViewController: UIViewController {
    
    
    @IBOutlet weak var senderTF: UITextField!
    @IBOutlet weak var usdtTF: UITextField!
    
//    print(senderTF.text)
//    print(usdtTF.text)
    
    
    
    //переменная в которую поместим значение login из первого экрана 
    var login: String?
    
    @IBOutlet weak var label: UILabel!
    
    
    //функция при перемещении на экран что должна иметь в себе когда пользователь увидит
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let login = self.login else { return }
        label.text = "HELLO, \(login)!"
    }
    
    
    
    
    
    @IBAction func sendTapped(_ sender: UIButton) {
        
    }
    
}
