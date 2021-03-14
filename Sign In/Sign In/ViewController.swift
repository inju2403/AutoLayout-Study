//
//  ViewController.swift
//  Sign In
//
//  Created by 이승주 on 2021/03/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var emailError: UILabel!
    @IBOutlet weak var passwordError: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //textfield 값이 변경되는 걸 캐치하도록 세팅
        emailTextField.addTarget(self, action: #selector(textFieldEdited), for: .editingChanged)
        passwordTextField.addTarget(self, action: #selector(textFieldEdited), for: .editingChanged)
    }
    
    @objc func textFieldEdited(textField: UITextField) {
        
        if textField == emailTextField {
            
        } else if textField == passwordTextField {
            
        }
        
    }


}

