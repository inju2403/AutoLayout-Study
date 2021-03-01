//
//  ViewController.swift
//  Custom Keyboard
//
//  Created by 이승주 on 2021/03/01.
//

import UIKit

class ViewController: UIViewController, CustomKeyboardDelegate {
    func keyboardTapped(str: String) {
        print(str)
    }
    

    @IBOutlet weak var firstTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // 커스텀 키보드 설정 방법
//        firstTextField.inputView = 커스텀 키보드 뷰
        
        let loadNib = Bundle.main.loadNibNamed("CustomKeyboard", owner: nil, options: nil)
        let myKeyboard = loadNib?.first as! CustomKeyboard
//        let myKeyboard = loadNib?[0] as! CustomKeyboard   // 위의 코드와 같음
        
        myKeyboard.delegate = self
        
        firstTextfield.inputView = myKeyboard
    }


}
